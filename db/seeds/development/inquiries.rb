5.times do |n|
  name = "sample#{n+1}"
  email = "sample#{n+1}@email.com"
  content = "お試しで何回か来てもらうことは可能ですか？"
  Inquiry.create!(name: name,
                  email: email,
                  content: content
                )
end