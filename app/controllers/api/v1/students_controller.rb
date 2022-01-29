class Api::V1::StudentsController < ApplicationController

  def index
    students = Student.left_joins(:teachers).select('students.*, teachers.name as teacher_name, teachers.teacher_icon').order(:id)
    render json: students, status: 200
  end

  def update
    student = Student.find(params[:id])
    teacher = Teacher.find(params[:id])
    if teacher.update(teachers_params) && student.update(student_params)
      render json: student, status: 200
    else
      render json: student, status: 500
    end
  end

  def destroy
    student = Student.find(params[:id])
    if student.destroy
      render json: student, status: 200
    else
      render json: student, status: 500
    end
  end

  private

    def student_params
      params.permit(:id, :name, :email, :post_code, :address, :birthday, :student_icon, :teacher_id)
    end

    def teachers_params
      params.permit(:teacher_icon).merge(name: params[:teacher_name])
    end

end