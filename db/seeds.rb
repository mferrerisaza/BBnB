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


#in case you guys need to create one in the console, copy paste:
# b = Boat.new( make: "BV", model:"yo", boat_type:"sail", capacity: 10, year: 1992, location: "Cartagena, Colombia", price: 155)

# Boats
10.times do

  b = Boat.new(
    make: Faker::Book.title,
    model:Faker::Date.birthday(18, 65) ,
    boat_type:Boat::BOAT_TYPE_OPTIONS.sample,
    capacity:Random.rand(1..10),
    year:Random.rand(Boat::YEAR_OPTIONS),
    location:["Barcelona","Lisbon", "Cartagena"].sample,
    price: Random.rand(1..10000).to_f
  )

  b.remote_photo_url = "https://source.unsplash.com/1600x900/?boats"
  b.user = User.find([1, 2, 3].sample)
  b.save!
end

Boat.all.each do |boat|
  3.times do
    booking = Booking.new( start_date: DateTime.now, end_date: DateTime.now + Random.rand(1..20), description: Faker::HarryPotter.quote )
    user = User.find([1, 2, 3].sample)
    until user != boat.user
      user = User.find([1, 2, 3].sample)
    end
    booking.user = user
    boat.bookings << booking
    booking.save!
  end
end
p "Work done!"
