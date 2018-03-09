# Create some Boats using faker
p "Seeding"
require 'date'
# User


u = User.new( email: "miguef7@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Miguel Ferrer")
u.save!
u = User.new( email: "test@test.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Amber Rose")
u.save!
u = User.new( email: "test@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Dan Siberry")
u.save!
u = User.new( email: "dan@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Ollie Senduk")
u.save!
u = User.new( email: "ollie@test.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Andrey Barnov")
u.save!
u = User.new( email: "adrien@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Tanja Kohlen")
u.save!
u = User.new( email: "gus@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Gus De Vita")
u.save!
u = User.new( email: "andy@test.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "Joscha Koepke")
u.save!
u = User.new( email: "ben@gmail.com", password:"123456", password_confirmation:"123456")
u.profile = Profile.create(name: "George Kettle")
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

  b.remote_photo_url = "https://images.unsplash.com/17/unsplash_527bf56961712_1.JPG?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9528ac7a9611db52e6df3ec585586886&auto=format&fit=crop&w=800&q=60"
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

  b_two.remote_photo_url = "https://images.unsplash.com/photo-1500917832468-298fa6292e2b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7dc310134cdefd68cbb1fc7c6ab2049d&auto=format&fit=crop&w=1950&q=80"
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

  b_three.remote_photo_url = ""
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

  b_four.remote_photo_url = "https://images.unsplash.com/photo-1506461883276-594a12b11cf3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fb5d1395ba8657832dd903e22e20a1a7&auto=format&fit=crop&w=800&q=60"
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

  b_five.remote_photo_url = "https://images.unsplash.com/photo-1471459631207-76afc6acca3e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ca55c4e75c4880bb78dd34d749d36f20&auto=format&fit=crop&w=800&q=60"
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

  b_six.remote_photo_url = "https://images.unsplash.com/photo-1467284394636-5a60f8f9ec1e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d4720c8da5ae36b4988e5110e3d29805&auto=format&fit=crop&w=800&q=60"
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

  b_seven.remote_photo_url = "https://images.unsplash.com/photo-1433946160509-54ed63ba50b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9b2c49628cb4f04faaf31d435bd219c7&auto=format&fit=crop&w=800&q=60"
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

  b_eight.remote_photo_url = "https://images.unsplash.com/photo-1503276459378-5e4c6865a0c3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1198c5442eaa7702de5971552ba7b6ab&auto=format&fit=crop&w=1000&q=80"
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

  b_nine.remote_photo_url = "https://images.unsplash.com/photo-1442548520776-20acf66617df?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=694be06ff06c2ae37989aea5ca9d6889&auto=format&fit=crop&w=1950&q=80"
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
