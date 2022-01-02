Student.create(email: 'admin@example.com',
               password: 'password',
               admin: false,
               teacher: false)

Teacher.create(email: 'admin@example.com',
               password: 'password',
               teacher: true,
               admin: false)
