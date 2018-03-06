# Create some Boats using faker
p "Seeding"

# User
User.create!(email: Faker::Internet.email, password:"123456", password_confirmation:"123456")
User.create!(email: Faker::Internet.email, password:"123456", password_confirmation:"123456")
User.create!(email: Faker::Internet.email, password:"123456", password_confirmation:"123456")

# Boats
10.times do

  b = Boat.new(
    make: Faker::Book.title,
    model:Faker::Date.birthday(18, 65) ,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1880..2020),
    location:["Barcelona","Lisbon", "Cartagena"].sample,
    price: Random.rand(1..10000).to_f
  )

  b.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b.user = User.find([1, 2, 3].sample)
  b.save!
end

p "Work done!"
