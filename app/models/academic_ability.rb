class AcademicAbility < ApplicationRecord
  validates :national_language, presence: true
  validates :arithmetic, presence: true
  validates :science, presence: true
  validates :english, presence: true
  validates :society, presence: true
  validates :implementation_month, presence: true
  validates :student_id, presence: true
end
