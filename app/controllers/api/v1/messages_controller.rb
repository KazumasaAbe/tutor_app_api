class Api::V1::MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages
  end

  def show
    room = Room.find_by(student_id: params[:id])
    @messages = room.messages
    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    if @message.save
    # ActionCable.server.broadcast "messages_#{params[:room_id]}", message
    render json: {}
    else
      render json: @message.errors, status: 500
    end
  end

  private
  
  def message_params
    params.permit(:speaker, :content, :room_name, :teacher_id, :student_id, :room_id)
  end

  def message
    {
      id: params[:id],
      speaker: params[:speaker],
      content: params[:content],
      room_name: params[:room_name],
      teacher_id: params[:teacher_id],
      student_id: params[:student_id],
      room_id: params[:room_id]
    }
  end

end
