# frozen_string_literal: true

class Teacher < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  has_many :subjects, dependent: :destroy
  # has_one_attached :teacher_icon
  accepts_nested_attributes_for :subjects, allow_destroy: true, reject_if: :all_blank
  has_many :teacher_students, dependent: :destroy
  has_many :students, through: :teacher_students
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def teacher_icon_url
    teacher_icon.attached? ? url_for(teacher_icon) : nil
  end
      
  include DeviseTokenAuth::Concerns::User
  has_many :messages, through: :rooms

end
