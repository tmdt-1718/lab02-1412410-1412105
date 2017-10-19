# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do |index|
	User.create!(:user_name => Faker::Name.name, :email => Faker::Internet.unique.email, :password => "password #{index}", :cover => Faker::Avatar.unique.image)
end

User.create!(:user_name => 'psphu', :email => 'psphu96@gmail.com', :password => '123456', :cover => Faker::Avatar.unique.image)
User.create!(:user_name => '1412410', :email => '1412410@gmail.com', :password => '123456', :cover => Faker::Avatar.unique.image)
Friend.create!(:user_id => '3', :friend=> '4')
Friend.create!(:user_id => '4', :friend => '3')