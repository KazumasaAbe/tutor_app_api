class Api::V1::InquiryController < ApplicationController

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      render json: "送信完了"
    else
      #debugger
      render json: @inquiry.errors, status: :unprocessable_entity
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :content)
    end
end
