# frozen_string_literal: true

class Student < ActiveRecord::Base
  has_many :teacher_students
  has_many :teachers, through: :teacher_students
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
