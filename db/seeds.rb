require 'faker'

# Create Users
  user = User.new(
    name:     "Other Person",
    email:    "other@example.com",
    password: "password"
  )
  user.skip_confirmation!
  user.save!

# Create test member
  member = User.new(
    name: "test",
    email: "test@example.com",
    password: "password"
  )

  member.skip_confirmation!
  member.save!

  users = User.all

# Create Items
  10.times do
    Item.create!(
      user: users.sample,
      name: Faker::Lorem.sentence
    )
  end



 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"
