# frozen_string_literal: true

class Teacher < ActiveRecord::Base
  has_many :subjects, dependent: :destroy
  has_many :teacher_studnets
  has_many :students, through: :teacher_studnets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
