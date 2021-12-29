FactoryBot.define do
  factory :message do
    speaker { "MyString" }
    content { "MyString" }
    room_name { "MyString" }
    teacher_id { 1 }
    student_id { 1 }
  end
end
