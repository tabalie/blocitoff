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
    Items.create!(
      name: Faker::Lorem.sentence,
    )
  end
  items = Item.all

# Create a member
  member = User.new(
    name:     'Member User',
    email:    'member@example.com',
    password: 'helloworld'
  )
  member.skip_confirmation!
  member.save!

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"
