json.array!(@teachers) do |teacher|
  json.id teacher.id
  json.name teacher.name
  json.email teacher.email
  json.introduction teacher.introduction
  json.teacher_icon teacher.teacher_icon
  json.subject do
    json.array!(teacher.subjects.map{ |subject| subject[:subject] })
  end
end
