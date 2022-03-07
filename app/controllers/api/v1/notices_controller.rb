class Api::V1::NoticesController < ApplicationController

  def index  
    notices = Notice.all.order("created_at DESC")
    render json: notices, methods: [:notice_icon_url] 
  end

  def create
    notice = Notice.new(notice_params)
    if notice.save
      # render json: { status: 'SUCCESS', data: notice }
      # render json: notice 
      render json: notice, methods: [:notice_icon_url] 
    else
      render json: { status: 'ERROR', data: notice.errors }
    end
  end

  def destroy
    notice = Notice.find(params[:id])
    notice.destroy
    render json: { status: 'SUCCESS', message: 'Deleted the notice', data: notice }
  end

  def update
    notice = Notice.find(params[:id])
    if notice.update(notice_params)
      render json: notice, methods: [:notice_icon_url],status: 200
    else
      render json: { status: 'ERROR', message: 'Not updated', data: notice.errors }
    end
  end

  private

    def notice_params
      params.permit(:title, :text, :notice_icon)
      # params.require(:notice).permit(:title, :text, :notice_icon)
    end

end