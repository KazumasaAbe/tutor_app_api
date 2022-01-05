# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
table_names = %w(
  teachers
)

table_names.each do |table_name|
  path = Rails.root.join("db/seeds/#{Rails.env}/#{table_name}.rb")

  # ファイルが存在しない場合はdevelopmentディレクトリを読み込む
  path = path.sub(Rails.env, "development") unless File.exist?(path)

  puts "#{table_name}..."
  require path
end

Teacher.create(email: 'admin@example.com',
               password: 'password',
               teacher: true,
               admin: true)

10.times do |n|
  email = "student-#{n+1}@email.com"
  password = "password"
  Student.create!(email: email,
                  password: password,
                  password_confirmation: password,
                  teacher: false)
end

10.times do |n|
  email = "teacher-#{n+1}@email.com"
  password = "password"
  Teacher.create!(email: email,
                  password: password,
                  password_confirmation: password,
                  teacher: true)
end