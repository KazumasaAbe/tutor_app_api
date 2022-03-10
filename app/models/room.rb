class Room < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  has_many :messages
  validates :teacher_id, presence: true
  validates :student_id, presence: true
end
