class Api::V1::TeachersController < ApplicationController

  def index
    teachers = Teacher.all
    render json: teachers.as_json(only: [:id, :name, :introduction, :teacher_icon])
  end
end
