# Create some Boats using faker
p "Seeding"
require 'date'
# User


u = User.new( email: "miguef7@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "test@test.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "test@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "dan@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "ollie@test.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "adrien@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "gus@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "andy@test.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!
u = User.new( email: "ben@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: Faker::ElderScrolls.creature)
u.save!

#in case you guys need to create one in the console, copy paste:
# b = Boat.new( make: "BV", model:"yo", boat_type:"sail", capacity: 10, year: 1992, location: "Cartagena, Colombia", price: 155)

# Boats

makes = ["Bayliner", "Cobalt", "Glastron", "Sea Vee", "Sea Chaser", "Boston Whaler", "World Cat"]
models = ["F12", "Dolphin F34", "AquaRay 2000", "RT-300", "B Series 100"]
  b = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b.user = User.find([1, 2, 3].sample)
  b.save!

  b_two = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_two.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_two.user = User.find([1, 2, 3].sample)
  b_two.save!

  b_three = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_three.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_three.user = User.find([1, 2, 3].sample)
  b_three.save!

  b_four = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_four.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_four.user = User.find([1, 2, 3].sample)
  b_four.save!

  b_five = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_five.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_five.user = User.find([1, 2, 3].sample)
  b_five.save!

  b_six = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_six.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_six.user = User.find([1, 2, 3].sample)
  b_six.save!

  b_seven = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_seven.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_seven.user = User.find([1, 2, 3].sample)
  b_seven.save!

  b_eight = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_eight.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_eight.user = User.find([1, 2, 3].sample)
  b_eight.save!

  b_nine = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_nine.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_nine.user = User.find([1, 2, 3].sample)
  b_nine.save!

  b_ten = Boat.new(
    make: makes.sample,
    model: models.sample,
    boat_type:["Power", "Sail"].sample,
    capacity:Random.rand(1..10),
    year:Random.rand(1930..2018),
    location:["Barcelona","Lisbon", "Cartagena", "Cancun", "Miami", "Dubai"].sample,
    price: Random.rand(1..10000).to_f
  )

  b_ten.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b_ten.user = User.find([1, 2, 3].sample)
  b_ten.save!



Boat.all.each do |boat|
  3.times do
    booking = Booking.new( start_date: DateTime.now, end_date: DateTime.now + Random.rand(1..20), description: Faker::HarryPotter.quote )
    user = User.find([1, 2, 3, 4, 5, 6, 7, 8].sample)
    until user != boat.user
      user = User.find([1, 2, 3, 4, 5, 6, 7, 8].sample)
    end
    booking.user = user
    boat.bookings << booking
    booking.save!
  end
end
p "Work done!"
