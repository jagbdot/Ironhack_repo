class Dog
	def initialize (name, breed, bark)
		@name = name
		@breed = breed
		@bark = bark
		@list = []
	end
	def bark
		puts @bark
	end

	def smell=(str)
		@name = str
	end
	def smell (person)
		@list.push(person)
	end
	def people_smelled
		@list
	end
end

perro1 = Dog.new("toby", "pitbull", "grrr")
perro1.smell("paco")
perro1.smell("luis")
perro1.smell("Pepe")
puts perro1.people_smelled.inspect

class Hound < Dog
	def bark
		puts "bark"
	end
	def track
		puts "snifff sniff"
	end
end

class PetDog < Dog
	def initialize (name1, breed, bark, name, action)
		super(name, breed, bark)
		@owner = name
		@fetch = action
	end
	def owner
		puts @owner
	end
	def fetch
		puts @fetch
	end
end