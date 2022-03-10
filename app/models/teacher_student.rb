class TeacherStudent < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  validates :teacher_id, presence: true
  validates :student_id, presence: true
end
