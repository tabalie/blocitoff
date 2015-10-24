require 'faker'

# Create Users
  10.times do
    user = User.new(
      name:     Faker::Name.name,
      email:    Faker::Internet.email,
      password: Faker::Lorem.characters(10)
    )
    user.skip_confirmation!
    user.save!
  end
  users = User.all

# Create Items
  30.times do
    Item.create!(
			user: users.sample,
      name: Faker::Lorem.sentence
    )
  end
  items = Item.all

# Create test member
	member = User.new(
		name: "test",
		email: "test@example.com",
		password: "password"
	)

	member.skip_confirmation!
	member.save!

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"
