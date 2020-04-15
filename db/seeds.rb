User.create!(
  first_name: "Admin",
  last_name: "Job UP",
  email: "admin@gmail.com",
  password:  ENV['ADMIN_PASSWORD'],
  password_confirmation: ENV['ADMIN_PASSWORD'],
  user_type: "admin",
  confirmed_at: Time.zone.now
)
40.times do |n|
User.create!(first_name:  Faker::Name.name,
   last_name:  "Nguyen",
   email: "example-#{n+1}@gmail.com",
   user_type: Faker::Number.between(from: 1, to: 2),
   password: "password",
   password_confirmation: "password",
   confirmed_at: Time.zone.now)
end
