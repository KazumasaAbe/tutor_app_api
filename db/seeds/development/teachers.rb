10.times do |n|
  name = "先生#{n}"
  email = "teacher-#{n+1}@email.com"
  introduction = "初めまして！先生#{n}といいます。生徒に合わせ教え方を変えて勉強が楽しい！と思ってもらえるように笑顔を絶やさず丁寧に教えます！"
  password = "password"
  Teacher.create!(name: name,
                  email: email,
                  introduction: introduction,
                  password: password,
                  password_confirmation: password,
                  teacher: true)
end

Teacher.create(email: 'admin@example.com',
  password: 'password',
  teacher: true,
  admin: true)


 puts "teachers = #{Teacher.count}"
