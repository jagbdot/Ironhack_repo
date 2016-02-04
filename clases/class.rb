class Dog
	def initialize (name, breed)
		@name = name
		@breed = breed
		file = File.open("lista.txt", "w")
	end
	def smell=(str)
		@name = str
	end

	def smell (person)
		file = File.open("lista.txt", "a")
		file.puts(person)
		file.close
	end

	def people_smelled
		file = File.open("lista.txt", "r")
		people = file.readlines
		file.close
		people
	end
end

perro1 = Dog.new("toby", "pitbull")
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
	def initialize (name, action)
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