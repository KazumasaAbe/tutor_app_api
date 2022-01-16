class Api::V1::StudentsController < ApplicationController

  def index
    students = Student.select(:id, :name, :email, :post_code, :address, :birthday, :student_icon, :teacher_id).order(:id)
    render json: students, status: 200
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
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

end