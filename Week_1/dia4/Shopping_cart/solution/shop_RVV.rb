require "pry"
require_relative './products_RVV'

class Shop
	attr_accessor :totalPrice, :totalProducts, :productsShop
	attr_accessor :fruit, :houseWare, :products

	def initialize
		@productsShop = {:houseWare => ["vacuum cleaner"], 
			             :fruit => ["banana", "orange", "grapes"], 
			             :product => ["rice", "anchovies"]}
		@fruit = []
		@houseWare = []
		@products = []
		@totalPrice = 0
		@totalProducts = ""
		self.show_menu
	end

	def show_menu
		response = ""
		while(response != '3') do
			print "Menu: \n 1 - Add a product \n 2 - My products \n 3 - Exit\n"
			response = gets.chomp
			self.evaluate_response(response)
		end
	end

	def evaluate_response user_response
		case user_response.to_i
			when 1
				puts "Please select between these products: vacuum cleaner, banana, orange, grapes, rice and anchovies"
				checkProduct(gets.chomp)
			when 2 
				getList
			when 3
				puts "Thanks for shopping."
			end
	end

	def checkProduct(product)
		message = ""
		@productsShop.each do |category, existent_products|
			if existent_products.include? product.downcase
				if category == :houseWare
					new_product = HouseWare.new(product)
					@houseWare << new_product
				elsif category == :fruit
					new_product = Fruit.new(product)
					@fruit << new_product
				else
					new_product = Product.new(product)
					@products << new_product
				end
				pushProduct(new_product)
				message = "Successfully added"
			else
				message = "There´s no #{product} in the shop" if message == ""
			end
		end
		puts message
	end

#Adds a product to the cart
	def pushProduct(product)
		price, name = product.getProduct
		@totalPrice += price
		@totalProducts += name + " \n"
	end

#Shows the products currently in the cart
	def getList
		final_price = apply_discounts
		puts "List of products:"
		puts @totalProducts
		puts "Total price #{final_price}" 
	end

#This method calculates the final price with the discounts applied
	def apply_discounts
		elements = count_elements
		all_discounts = 0
		#A free banana for 4 grapes
		(elements["grapes"].to_i / 4).times do   #I don't like this solution at all, it addes a banana each time you show the cart list
			banana = Fruit.new("banana")
			banana.price = 0
			@fruit << banana
			pushProduct(banana)
		end 
		all_discounts += elements["banana"] / 2 * 10
		all_discounts += elements["orange"] / 3 * 10 
		price_with_discounts = @totalPrice - all_discounts
	end

	def count_elements
		products = @totalProducts.split(" \n")
		counts = Hash.new(0)
		products.each{ |product| counts[product] += 1 }
		counts
	end
end

shop = Shop.new

