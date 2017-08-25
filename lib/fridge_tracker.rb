require_relative '../config/environment'
require_relative '../app/models/fridge'
require_relative '../app/models/food'
require_relative '../app/models/drink'

puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add a Fridges"
puts "C) Delete a Fridge"
puts "D) View all food items in a specific fridge"
puts "E) Add a food item to a fridge"
puts "F) Eat a food item from a fridge (delete it)"
puts "G) View all drink items in a specific fridge"
puts "H) Add a drink item to a fridge"
puts "I) Consume part of a drink from a fridge (update its size in ounces)"
puts "J) Consume all of a drink from a fridge"
option = gets.chomp
puts "You selected #{option}"

if option.upcase == 'A'
  puts "Here are the fridge id's #{Fridge.all.ids.to_s}"
end

if option.upcase == 'B'
    puts "Cool, let's make a fridge"
    puts "Where is the fridge location?"
    location = gets.chomp
    puts "What brand is it?"
    brand = gets.chomp
    puts "What size is it in cubic feet?"
    size = gets.chomp
    puts "Does it have food in it? True or False"
    food = gets.chomp
    puts "Does it have drinks in it? True or False"
    drink = gets.chomp
    Fridge.create(location: location, brand: brand, size: size, food: food, drink: drink)
    puts "Created fridge"
end

if option.upcase == 'C'
    puts "What is the id of the fridge you would like to delete?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    fridge.destroy
    puts "FRIDGE DESTROYED!!!"
  end

  if option.upcase == 'D'
    puts "What is the id of the fridge you would like to view all the foods?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    puts fridge.foods
  end

  if option.upcase == 'E'
    puts "What is the id of the fridge you would like to add food to?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    puts "What food item would you like to add to the fridge?"
    food = Food.find_by(id: id)
    fridge.foods(food)
  end

  if option.upcase == 'F'
    puts "What is the id of the fridge you would like to remove food from?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    puts "What food item would you like to remove from the fridge?"
    food = Food.find_by(id: id)
    fridge.foods(food).destroy
  end

  if option.upcase == 'G'
    puts "What is the id of the fridge you would like to view all the drinks?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    puts fridge.drinks
  end

  if option.upcase == 'H'
    puts "What is the id of the fridge you would like to add drink to?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    puts "What drink item would you like to add to the fridge?"
    drink = Drink.find_by(id: id)
    fridge.drinks(drink)
  end

  if option.upcase == 'H'
    puts "What is the id of the fridge you would like to drink from?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    puts "What drink item would you like to drink from in the fridge?"
    drink = Drink.find_by(id: id)
    puts "How much did you drink? There are #{drink.size} ounces left."
    amount_consumed = gets.chomp
    drink.size = drink.size - amount_consumed
    fridge.drinks(drink).save
  end

  if option.upcase == 'H'
    puts "What is the id of the fridge you would like to drink all of?"
    id = gets.chomp
    fridge = Fridge.find_by(id: id)
    puts "What drink item would you like to drink from in the fridge?"
    drink = Drink.find_by(id: id)
    drink.size = 0.0
    fridge.drinks(drink).save
  end


