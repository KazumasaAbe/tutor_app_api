class Api::V1::TeachersController < ApplicationController
  
  def teacher_index
    # teachers = Teacher.where(admin: nil).joins(:subjects).select(:id, :name, :email, :introduction, :teacher_icon, :subject).order(:id)
    teachers = Teacher.where(admin: nil).eager_load(:subjects).order(:id)
    # subjects = Subject.all 
    # @teachers = Teacher.includes(:subjects)
    # teachers = teachers.subjects.build
    # render json: teachers, subjects, status: 200
    # render json:  teachers, status: 200
    render json: teachers.to_json(include:[:subjects])
  end

  def show
    @teacher = Teacher.find(params[:id])
    render json: @teacher
  end


  def update
    teacher = Teacher.find(params[:id])
    subject = Subject.find(params[:id])
    # if subject.update(subject_params) && teacher.update(teacher_params)
    # debugger
    # if params[:subjects][:subject] && teacher.update(teacher_params)
    # debugger
    # subject_params.each do |subject|
    #   subject.update_attributes!
    # end
    if teacher.update(teacher_params) && subject.update(subject_params)
    # if teacher.update(teacher_params)
    #   params[:subjects][:subject].each do |item|
    #     # debugger
    #     subjects=Subject.where(teacher_id: params[:id])
    #     subjects.each do |subject|
    #     # debugger
    #       if subject.subject == item
    #         subject.update(item)
    #       else
    #         subject.save(item)
    #       end
    #     end
    #     # subject.update_attributes!
    #   end
    # end
    # teacher_params.each do |id, item|
    # subject_params.each do |id, item|
      # teacher = Teacher.find(id)
      # teacher.update_attributes!(item)
    # end
    # if teacher.update(teacher_params)
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
      # params.require(:teacher).permit(:id, :name, :email, :introduction, :teacher_icon, subjects_attributes:[:subject])
    end

    def subject_params
      params.require(:subjects).permit({ subject: [] })
    end

end
