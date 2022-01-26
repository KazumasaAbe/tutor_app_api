class Api::V1::TeachersController < ApplicationController
  
  def teacher_index
    teachers = Teacher.where(admin: nil).joins(:subjects).select(:id, :name, :introduction, :teacher_icon, :subject)
    render json: teachers, status: 200
  end

end
