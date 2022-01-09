class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :introduction
  
  has_many :subjects
end
