require 'faker'

# Creates Users
   10.times do
      user = User.new(
        email:    Faker::Internet.email,
        password: Faker::Lorem.characters(8)
      )
      user.save!
    end
    users = User.all

    # Create Wikis
  35.times do
  wiki =  Wiki.create!(
      title:  Faker::Lorem.sentence,
      body:   Faker::Lorem.paragraph
    )
end
wikis = Wiki.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
