
User.create(
  wedding_name:           Faker::App.name,
  password_hash:          Faker::Lorem.word,
  p1_first_name:          Faker::Name.first_name,
  p1_last_name:           Faker::Name.last_name,
  p2_first_name:          Faker::Name.first_name,
  p2_last_name:           Faker::Name.last_name,
  email:                  Faker::Internet.email,
  home_address:           Faker::Address.street_address,
  wedding_location:       Faker::Address.street_address,
  wedding_time:           Faker::Date.forward(23),
  wedding_date:           Faker::Date.forward(23),
  wedding_reception_time: Faker::Date.forward(23)
  )

