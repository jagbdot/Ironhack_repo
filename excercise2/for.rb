for i in (1..100)
	if i % 3 == 0 && i % 5 == 0
		puts "fizzbuzz"
	elsif i % 3 == 0
		puts "fizz"
	elsif i % 5 == 0
		puts "fuzz"
	else puts “not"
	end
end