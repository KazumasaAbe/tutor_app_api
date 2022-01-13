class Api::V1::NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :update, :destroy]
  def index
    notices = Notice.all
    render json: notices.as_json(only: [:title, :text, :created_at])
  end

  def create
    notice = Notice.new(notice_params)
    if notice.save
      render json: { status: 'SUCCESS', data: notice }
    else
      render json: { status: 'ERROR', data: notice.errors }
    end
  end

  def destroy
    @notice.destroy
    render json: { status: 'SUCCESS', message: 'Deleted the notice', data: @notice }
  end

  def update
    if @notice.update(notice_params)
      render json: { status: 'SUCCESS', message: 'Updated the notice', data: @notice }
    else
      render json: { status: 'ERROR', message: 'Not updated', data: @notice.errors }
    end
  end

  private

    def set_notice
      @notice = Notice.find(params[:id])
    end

    def notice_params
      # params.require(:notice).permit(:title, :text, :notice_image)
      params.require(:notice).permit(:title, :text)
    end

end