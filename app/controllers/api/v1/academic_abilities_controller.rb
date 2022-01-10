class Api::V1::AcademicAbilitiesController < ApplicationController
  def index
    @abilities = AcademicAbility.all
    render json: @abilities
  end
end
