puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "667694", category: "chinese" }
favori = { name: "Favori", address: "657 Boundary cxfv", phone_number: "66764", category: "italian" }
french = { name: "Frenchi", address: "6 Boundary St, London E2 7JE", phone_number: "66557694", category: "french" }
france = { name: "France", address: "0 Boundary St, London E2 7JE", phone_number: "66794", category: "french" }
japan = { name: "Japaneese", address: "2 Boundary St, London E2 7JE", phone_number: "6679999694", category: "japanese" }

[ dishoom, favori, french, france, japan ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"