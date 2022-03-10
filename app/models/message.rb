class Message < ApplicationRecord
  belongs_to :room
  validates :speaker, presence: true
  validates :content, presence: true
  validates :teacher_id, presence: true
  validates :student_id, presence: true
end
