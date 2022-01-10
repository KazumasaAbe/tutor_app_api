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

AcademicAbility.create(subject: '国語',
                       score: 85,
                       implementation_month: '2022-01-1',
                       student_id: 1)

AcademicAbility.create(subject: '算数',
                       score: '65',
                       implementation_month: '2022-01-1',
                       student_id: 1)

AcademicAbility.create(subject: '理科',
                       score: '70',
                       implementation_month: '2022-01-1',
                       student_id: 1)

AcademicAbility.create(subject: '英語',
                       score: '90',
                       implementation_month: '2022-01-1',
                       student_id: 1)

AcademicAbility.create(subject: '社会',
                       score: '80',
                       implementation_month: '2022-01-1',
                       student_id: 1)