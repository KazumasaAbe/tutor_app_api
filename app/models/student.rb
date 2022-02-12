# frozen_string_literal: true

class Student < ActiveRecord::Base
  has_many :teacher_students, dependent: :destroy
  has_many :teachers, through: :teacher_students
  accepts_nested_attributes_for :teacher_students, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :messages, through: :rooms
end
