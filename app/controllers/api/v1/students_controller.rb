class Api::V1::StudentsController < ApplicationController

  def index
    students = Student.left_joins(:teachers).select('students.*, teachers.name as teacher_name').order(:id)
    render json: students, methods: [:student_icon_url], status: 200
    # students = Student.left_joins(:teachers).select('students.*, teachers.name as teacher_name, teachers.teacher_icon').order(:id)
    # render json: students, status: 200
  end

  def update
    student = Student.find(params[:id])
    teacher = Teacher.find_by(student_id: params[:id])
    if teacher.update(teachers_params) && student.update(student_params)
      render json: student, mehods: [:student_icon_url], status: 200
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
      params.permit(:id, :name, :email, :post_code, :address, :birthday, :teacher_id, :student_icon)
    end

    def teachers_params
      params.permit(:teacher_icon).merge(name: params[:teacher_name])
      # params.merge(name: params[:teacher_name], :teacher_icon)
    end

end