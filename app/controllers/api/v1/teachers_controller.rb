class Api::V1::TeachersController < ApplicationController
  
  def teacher_index
    teachers = Teacher.where(admin: nil).eager_load(:subjects).order(:id)
    render json: teachers.to_json(include:[:subjects])
  end

  def show
    @teacher = Teacher.find(params[:id])
    render json: @teacher
  end


  def update
    teacher = Teacher.find(params[:id])
    subject = Subject.find(params[:id])
    if teacher.update(teacher_params) && subject.update(subject_params)
      render json: teacher, status: 200
    else
      render json: teacher, status: 500
    end

    
  end

  def destroy
    teacher = Teacher.find(params[:id])
    if teacher.destroy
      render json: teacher, status: 200
    else
      render json: teacher, status: 500
    end
  end

  private

    def teacher_params
      params.permit(:id, :name, :email, :introduction, :teacher_icon)
    end

    def subject_params
      if params.require(:subjects)[0].present?
        params.require(:subjects)[0].permit({ subject: [] })
      else
        params.require(:subjects).permit({ subject: [] })
      end
    end

end
