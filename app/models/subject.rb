class Subject < ApplicationRecord
  belongs_to :teacher
  serialize :subject
end
