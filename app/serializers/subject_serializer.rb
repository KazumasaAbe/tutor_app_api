class SubjectSerializer < ActiveModel::Serializer
  attributes :teacher_id, :subject

  belongs_to :teacher
end
