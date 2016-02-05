require "pry"

class ShoppingCart
  attr_reader(:inventory)
  def initialize(inventory)
    @inventory = []
  end
  def cart_show
    puts @inventory
  end
  def add_item_to_cart(product)
    @inventory << product
  end
  def cost
    fruit_prices = {
      apples: 10, 
      oranges: 5, 
      grapes: 15, 
      bananas: 20, 
      watermelon: 50
    }

    paritular_cost = fruit_prices.map do |key, x|
      x
    end

    quantity_of_fruits = {}

    total_cost = @inventory.reduce(0) do |sum, fruit|
      #contaodr de frutas
      if(quantity_of_fruits[fruit] == nil)
        quantity_of_fruits[fruit] = 1
      else
        quantity_of_fruits[fruit] += 1
      end

      case fruit
        when :apples
          if(quantity_of_fruits[fruit] % 2 != 0)
            sum += fruit_prices[fruit]
          else
            sum = sum
          end
        else
          sum += fruit_prices[fruit]
        end
      end
    total_cost
  end
end

cart = ShoppingCart.new("inventario")

cart.add_item_to_cart(:apples)
cart.add_item_to_cart(:apples)
cart.add_item_to_cart(:bananas)
cart.add_item_to_cart(:bananas)
cart.add_item_to_cart(:bananas)
 
puts "#{cart.cart_show}"
puts "El costo total es #{cart.cost}"

