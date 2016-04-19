def destination()
  destination = 999

  until destination =~ /[a-zA-Z]/
    puts "Please enter your destination:"
    destination = gets.chomp
  end

  destination.downcase.gsub(/\w+/, &:capitalize)
end

def hotel()
  hotel = 999

  until hotel =~ /[a-zA-Z]/
    puts "Where would you like to stay?"
    hotel = gets.chomp
  end

  hotel.downcase.gsub(/\w+/, &:capitalize)
end

def sites()
  sites = 999

  until sites =~ /[a-zA-Z]/
    puts "What sites would you like to see? (separated by commas)"
    sites = gets.chomp
  end

  sites.downcase.gsub(/\w+/, &:capitalize)
end

def food()
  food = 999

  until food =~ /[a-zA-Z]/
    puts "What food would you like to eat?"
    food = gets.chomp
  end

  food.downcase.gsub(/\w+/, &:capitalize)
end

def nights()
  nights_to_stay = nil

  until nights_to_stay =~ /[^a-zA-Z]/
    puts "How many nights would you like to stay?"
    nights_to_stay = gets.chomp
  end

  nights_to_stay.to_i
end

puts "Welcome to the trip planner!"

u_destination = destination
u_hotel = hotel
u_sites = sites
u_food = food
u_nights = nights

puts "Your Itinerary:"
puts "Destination: #{u_destination}"
puts "Place to stay: #{u_hotel}"
puts "Sites: #{u_sites}"
puts "Food: #{u_food}"
puts "Nights: #{u_nights}"
