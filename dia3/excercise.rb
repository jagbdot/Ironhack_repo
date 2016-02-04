
# hash = {
#   :wat => [0, 1, {:wut => [0, [[0, 1, 2, 3, 4, 5, 6, 7, 8, {:bbq => "U are a fucking leyend!"}]]]}]
# }

# arr = [
#   [0, 1, 2, 3, 4, {:secret => {:unlock => [0] = "Very good"}}]
# ]

# puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]

# class CarDealer
#   def initialize(inventory)
#     @inventory = []
#   end
#   def car_dealer
#     car_selected

#     end
#   end
# end

# class Cars
#   def initialize(brand, model)
#     @brand = brand
#     @model = model
#   end
# end

# car_dealer.brand("Ford")

# cars = [
#   Car.new("Ford", "Fiesta"),
#   Car.new("Fords", "Mustang"),
#   Car.new("Seat", "Ibiza")
#   Car.new("Seat", "León")
#   Car.new("Seat", "Toledo")
# ]

class CarDealer
def initialize(inventory)
  @inventory = inventory
end
​
def cars(brand)
  @inventory.select { |car| car[:brand].downcase == brand.downcase }
end
​
def pretty_print_inventory
  pretty_print_inventory = {}
  @inventory.each do |car|
    brand = car[:brand].downcase
    pretty_print_inventory[brand] ||= []
    pretty_print_inventory[brand] << car[:model].downcase.capitalize
  end
​
  pretty_print_inventory.each do |brand, models|
    puts "#{brand}: #{models.join(", ")}"
  end
end
​
end
​
​
inventory = [
  { brand: "Ford",  model: "fiesta",  year: 2010,  license: "ASD123" },
  { brand: "Ford",  model: "mustang", year: 2011,  license: "OKD123" },
  { brand: "Tesla", model: "S",       year: 2014,  license: "FYS123" },
  { brand: "Mini",  model: "Cooper",  year: 2011,  license: "WQA123" },
]
​
car_dealer = CarDealer.new(inventory)
puts car_dealer.cars("Ford").inspect
puts car_dealer.pretty_print_inventory

