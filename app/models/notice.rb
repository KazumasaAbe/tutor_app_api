# class Notice < ApplicationRecord
class Notice < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  
  has_one_attached :notice_icon

  def notice_icon_url
    notice_icon.attached? ? url_for(notice_icon) : nil
  end
end
