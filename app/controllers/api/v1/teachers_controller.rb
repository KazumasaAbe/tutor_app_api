class Api::V1::TeachersController < ApplicationController

  def teacher_index
    teachers = Teacher.where(admin: nil)
    # render json: teachers.as_json(only: [:id, :name, :introduction, :teacher_icon])
    render json: teachers, include: [:subjects], status: 200
  end
end
