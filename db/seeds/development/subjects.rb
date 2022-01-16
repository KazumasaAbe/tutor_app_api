10.times do |n|
  subject = "英語"
  teacher_id = n+1
  Subject.create!(subject: subject,
                  teacher_id: teacher_id)
end

puts "subjects = #{Subject.count}"