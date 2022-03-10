class Api::V1::AcademicAbilitiesController < ApplicationController

  def index
    @abilities = AcademicAbility.all
  end

  def show
    @abilities = AcademicAbility.where(student_id: params[:id])
    render json: @abilities
  end

  def create
    ability = AcademicAbility.new(ability_params)
    if ability.save
      render json: ability, status: 200
    else
      render json: { status: 'ERROR', data: ability.errors }
    end
  end

  def destroy
    ability = AcademicAbility.find(params[:id])
    ability.destroy
    render json: ability, status: 200
  end

  def update
    ability = AcademicAbility.find(params[:id])
    if ability.update(ability_params)
      render json: ability, status: 200
    else
      render json: { status: 'ERROR', message: 'Not updated', data: ability.errors }
    end
  end

  private

    def ability_params
      params.require(:academic_ability).permit(:implementation_month, :national_language, :arithmetic, :science, :english, :society, :student_id)
    end

end
