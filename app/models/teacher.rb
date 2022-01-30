# frozen_string_literal: true

class Teacher < ActiveRecord::Base
  has_many :subjects, dependent: :destroy
  accepts_nested_attributes_for :subjects, allow_destroy: true, reject_if: :all_blank
  has_many :teacher_students, dependent: :destroy
  has_many :students, through: :teacher_students
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
