10.times do |n|
  name = "teacher-#{n}"
  email = "#{name}@example.com"
  introduction = "初めまして！teacher-#{n}といいます。
                  生徒に合わせ教え方を変えて勉強が楽しい！と
                  思ってもらえるように笑顔を絶やさず丁寧に教えます！"
  password = "password"
  Teacher.create!(
    name: name,
    email: email,
    introduction: introduction,
    password: password
  )
end 

Teacher.create(email: 'admin@example.com',
  password: 'password',
  teacher: true,
  admin: true)


 puts "teachers = #{Teacher.count}"
