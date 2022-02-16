3.times do |n|
  speaker = "teacher"
  content = "先生こんにちは1"
  room_name = "sample"
  teacher_id = 1
  student_id = 1
  room_id = 1
  Message.create!(speaker: speaker,
                  content: content,
                  room_name: room_name,
                  teacher_id: teacher_id,
                  student_id: student_id,
                  room_id: room_id)
end

3.times do |n|
  speaker = "student"
  content = "生徒こんにちは1"
  room_name = "sample"
  teacher_id = 1
  student_id = 1
  room_id = 1
  Message.create!(speaker: speaker,
                  content: content,
                  room_name: room_name,
                  teacher_id: teacher_id,
                  student_id: student_id,
                  room_id: room_id)
end

3.times do |n|
  speaker = "teacher"
  content = "先生こんにちは2"
  room_name = "sample2"
  teacher_id = 2
  student_id = 2
  room_id = 2
  Message.create!(speaker: speaker,
                  content: content,
                  room_name: room_name,
                  teacher_id: teacher_id,
                  student_id: student_id,
                  room_id: room_id)
end

3.times do |n|
  speaker = "student"
  content = "生徒こんにちは2"
  room_name = "sample2"
  teacher_id = 2
  student_id = 2
  room_id = 2
  Message.create!(speaker: speaker,
                  content: content,
                  room_name: room_name,
                  teacher_id: teacher_id,
                  student_id: student_id,
                  room_id: room_id)
end



puts "messages = #{Message.count}"