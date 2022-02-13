class Api::V1::RoomsController < ApplicationController
  def show
    @room = Room.where(student_id: params[:id])
    render json: @room
  end
end
