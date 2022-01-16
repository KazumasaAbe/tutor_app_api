10.times do |n|
  email = "student-#{n+1}@email.com"
  password = "password"
  Student.create!(email: email,
                  password: password,
                  password_confirmation: password,
                  teacher: false)
end

puts "students = #{Student.count}"