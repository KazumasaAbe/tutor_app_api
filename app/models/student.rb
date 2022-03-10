# frozen_string_literal: true

class Student < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  has_many :teacher_students, dependent: :destroy
  has_many :teachers, through: :teacher_students
  has_one_attached :student_icon
  has_one_attached :teacher_icon
  accepts_nested_attributes_for :teacher_students, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :messages, through: :rooms
  validates :teacher_id, presence: true

  def student_icon_url
    student_icon.attached? ? url_for(student_icon) : nil
  end
  def teacher_icon_url
    teacher_icon.attached? ? url_for(teacher_icon) : nil
  end
end
