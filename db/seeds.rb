require 'faker'

10.times do
    user = User.create!(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 email: Faker::Internet.email,
                 password: Faker::Internet.password(min_length: 8),
                 pseudo: Faker::Internet.username,
                 status: ["Ingénieur(e) d'affaires", "Intercontrat"].sample,
                 seniority: Faker::Date.backward(days: 365),
                 agency: Faker::Company.name,
                confirmed_at: Time.now)
    user.save!
  end