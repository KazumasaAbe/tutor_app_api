# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
table_names = %w(
  teachers
  students
  subjects
  academic_abilities
)

table_names.each do |table_name|
  path = Rails.root.join("db/seeds/#{Rails.env}/#{table_name}.rb")

#   # ファイルが存在しない場合はdevelopmentディレクトリを読み込む
  path = path.sub(Rails.env, "development") unless File.exist?(path)

  puts "#{table_name}..."
  require path
 end

# 重複のためコメントアウト（2022/1/21 槇）
# Teacher.create(email: 'admin@example.com',
#                password: 'password',
#                teacher: true,
#                admin: true)

# 10.times do |n|
#   name = "生徒#{n}"
#   email = "student-#{n+1}@email.com"
#   password = "password"
#   post_code = "144-0047"
#   address = "東京都大田区萩中"
#   from = Time.parse("2008/01/01")
#   to = Time.parse("2015/01/01")
#   birthday = Random.rand(from..to)
#   teacher_id = n
#   Student.create!(name: name,
#                   email: email,
#                   password: password,
#                   password_confirmation: password,
#                   post_code: post_code,
#                   address: address,
#                   birthday: birthday,
#                   teacher_id: teacher_id,
#                   teacher: false)
# end

# 10.times do |n|
#   name = "先生#{n}"
#   email = "teacher-#{n+1}@email.com"
#   introduction = "初めまして！先生#{n}といいます。生徒に合わせ教え方を変えて勉強が楽しい！と思ってもらえるように笑顔を絶やさず丁寧に教えます！"
#   password = "password"
#   Teacher.create!(name: name,
#                   email: email,
#                   introduction: introduction,
#                   password: password,
#                   password_confirmation: password,
#                   teacher: true)
# end

# 10.times do |n|
#   subject = "英語"
#   teacher_id = n+1
#   Subject.create!(subject: subject,
#                   teacher_id: teacher_id)
# end


Notice.create!(title: '新しい先生が加わりました!', text: '2021年より新しい先生が加わります!!教科は、「国語」「理科」を担当してもらいます。')
Notice.create!(title: '新しい先生が加わりました!', text: '2021年より新しい先生が加わります!!教科は、「国語」「理科」を担当してもらいます。')
Notice.create!(title: '新しい先生が加わりました!', text: '2021年より新しい先生が加わります!!教科は、「国語」「理科」を担当してもらいます。')
Notice.create!(title: '新しい先生が加わりました!', text: '2021年より新しい先生が加わります!!教科は、「国語」「理科」を担当してもらいます。')