20.times do
  User.create(
    wedding_name:           Faker::App.name,
    password_hash:          Faker::Lorem.word,
    p1_first_name:          Faker::Name.first_name,
    p1_last_name:           Faker::Name.last_name,
    p2_first_name:          Faker::Name.first_name,
    p2_last_name:           Faker::Name.last_name,
    email:                  Faker::Internet.email,
  )
end
