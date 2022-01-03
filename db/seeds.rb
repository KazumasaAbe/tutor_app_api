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