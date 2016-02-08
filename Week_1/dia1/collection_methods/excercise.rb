class Home
  attr_reader(:name, :city, :capacity, :price)
  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

class HomeManager
  def put_array_names(array)
    array.each do |home|
      puts "#{home.name}, en la ciudad de #{home.city}. Capacidad de #{home.capacity} personas. Precio: #{home.price} dolares"
    end
  end

  def order_by_price(array)
    puts "¿Quieres ordenar por precio? (Si or No)"
    option = gets.chomp
      if option.downcase == "si" 
        sorted_array = array.sort{ |x,y| y.price <=> x.price }
      elsif option.downcase == "no" 
        puts "ok"
      else 
        puts order_by_price
    end
  end

  def order_by_capacity(array)
    puts "¿Quieres ordenar por capacidad? (Si o No)"
    option = gets.chomp
      if option.downcase == "si" 
        sorted_array = array.sort{ |x,y| y.capacity <=> x.capacity }
      elsif option.downcase == "no" 
        puts "ok"
      else 
        puts order_by_capacity
    end
  end

  # def filter_by_city(array)
  #   puts "Escoge una ciudad"
  #   option = gets.chomp
  #   array.select { |home| home == option }
  # end

  def average(array)
    total = homes.reduce do |sum, price|
      sum + price
      end
      total / homes.length.to_f
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

put_array_names(homes)
put_array_names(order_by_price(homes))
put_array_names(order_by_capacity(homes))
# filter_by_city(homes)
# average(homes)

