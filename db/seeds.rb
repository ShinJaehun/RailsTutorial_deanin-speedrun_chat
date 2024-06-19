# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(username: "에에에이",
            email: "a@a",
            password: "password",
            password_confirmation: "password")
User.create(username: "비이",
            email: "b@b",
            password: "password",
            password_confirmation: "password")
User.create(username: "씨이이",
            email: "c@c",
            password: "password",
            password_confirmation: "password")
50.times do
  Message.create(
    body: Faker::Lorem.sentence(word_count: 10),
    user_id: rand(1..3))
end
