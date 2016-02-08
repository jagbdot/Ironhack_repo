class Home
  attr_reader(:name, :city, :capacity, :price)
  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

names = homes.map do |x|
  x.name
end

prices = homes.map do |x|
  x.price
end

total_price = prices.reduce(0.0) do |sum, x|
  sum + x
end

homes_from_city = homes.select do |x|
  puts "choose a city"
  city_slected = gets.chomp
  if (x.city == city_slected)
    puts x.name
  else
    puts "oh no!"
  end
end

puts "#{names}"
puts "#{prices}"
puts "the average is #{total_price / homes.length}"
puts "#{homes_from_city} es el lugar de dicha ciudad"

