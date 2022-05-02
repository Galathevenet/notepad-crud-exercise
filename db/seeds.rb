puts "Deleting notes DB..."
Note.destroy_all
puts "DB destroyed, you got nothing to do anymore !"

puts "Creating 10 random tasks"

10.times do
  Note.create!(
    name: Faker::Restaurant.name,
    description: Faker::Restaurant.description
  )
end

puts "10 new things to do let's go lazy !"
