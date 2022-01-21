class Subject < ApplicationRecord
  belongs_to :teacher, foreign_key: "teacher_id"
end
