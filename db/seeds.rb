puts "cleaning the DB..."
Restaurant.destroy_all

puts "creating resturants..."
poopy_burger = {name: "poopy burger", adress:"Meka", phone_number:"27111391", category:"japanese"}
poopy_pizza = {name: "poopy pizza", adress:"Copenhagen", phone_number:"22333119", category:"italian"}

[poopy_burger, poopy_pizza].each do |attr| 
  restaurant = Restaurant.create!(attr)
  puts "Creates #{restaurant.name} succssuflly"
end

puts "Done!"