class Subject < ApplicationRecord
  belongs_to :teacher
  serialize :subject
  validates :subject, presence: true
  validates :teacher_id, presence: true
end
