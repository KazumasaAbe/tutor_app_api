# frozen_string_literal: true

class Teacher < ActiveRecord::Base
  has_many :subjects, dependent: :destroy
  accepts_nested_attributes_for :subjects, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
