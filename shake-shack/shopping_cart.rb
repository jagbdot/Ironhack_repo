# shoppingcart excercise

class ShoppingCart
  def initialize
    @items = []
    @price = 0
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
  	total_price_cart = @price
 
    @items.each do |item|
    total_price_cart += item.price
	end
    # discount of 10% storewide
    item = @items
    if item > 4
    	total_price_cart -= ((10*total_price_cart)/100)
    end
    total_price_cart
  end
end

#each item...

class Item 
attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      total_price = @price
  end
end

class Houseware < Item
  def price
  	unit_price = @price
      if unit_price > 100
      	unit_price -= ((5*unit_price)/100)
      end
  end
end

class Fruit < Item
  def price
      weekdays_price = @price 
      weekend_price = weekdays_price - ((10*weekdays_price)/100)
  end
end

#The Shop...

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

new_cart = ShoppingCart.new
new_cart.add_item(banana)
new_cart.add_item(orange_juice)
new_cart.add_item(rice)
new_cart.add_item(vacuum_cleaner)
new_cart.add_item(anchovies)

# Put de price of each

puts banana.price
puts orange_juice.price
puts rice.price
puts vacuum_cleaner.price
puts anchovies.price

# The total today...

puts "Your total today is #{new_cart.checkout}. Have a nice day!" 
