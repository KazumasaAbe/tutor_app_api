class Api::V1::RoomsController < ApplicationController
  def show
    @room = Room.where(student_id: params[:id])
    render json: @room
  end

  def create
    if room = Room.new(room_params)
      if room.save
        render json: "ルームを作成しました"
      else
        render json: "ルームの作成に失敗しました"
      end
    end
    
  end

  private
    def room_params
      params.permit(:teacher_id, :student_id)
    end
end
