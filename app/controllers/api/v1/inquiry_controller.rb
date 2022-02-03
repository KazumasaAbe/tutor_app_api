class Api::V1::InquiryController < ApplicationController
  def index
    @inquiries = Inquiry.new
    @inquiries = Inquiry.all
    # debugger
    render json: @inquiries
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
    debugger
    if params[:id]
      inquiry = Inquiry.find(params[:id])
      # debugger
      @inquiry.update(inquiry_params)
      # debugger
      @inquiry.save
      render json:@inquiry
    end

    

  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :content)
    end
end
