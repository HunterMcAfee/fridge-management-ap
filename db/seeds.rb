Fridge.destroy_all
Food.destroy_all
Drink.destroy_all

fridge_one = Fridge.create(location: 'Atlanta', brand: 'Samsung', size: 12.0, food: true, drink: true)

fridge_one.foods = [
    Food.create(name: "Spaghetti", weight: 10.0, vegan: false),
    Food.create(name: "Meat Loat", weight: 12.0, vegan: false),
    Food.create(name: "Cucumber", weight: 5.0, vegan: true)
]

fridge_one.drinks = [
    Drink.create(name: "Coke", size: 12.0, alcoholic: false),
    Drink.create(name: "Sprite", size: 12.0, alcoholic: false),
    Drink.create(name: "Wine", size: 64.0, alcoholic: true)
]

puts "Seeded!"
