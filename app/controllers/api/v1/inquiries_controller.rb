class Api::V1::InquiriesController < ApplicationController
  def index
    inquiries = Inquiry.new
    inquiries = Inquiry.all
    render json: inquiries
  end

  def create
    if inquiry = Inquiry.new(inquiry_params)
      if inquiry.save
        render json: "送信完了しました"
      else
        render json: inquiry.errors, status: :unprocessable_entity
      end
    end
  end

  def update
    if params[:read_at]
      inquiry = Inquiry.find(params[:id])
      if inquiry.read_at.blank?
        inquiry.update(read_at: params[:read_at])
        inquiry.save
        render json: inquiry
      end
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :content)
    end
end
