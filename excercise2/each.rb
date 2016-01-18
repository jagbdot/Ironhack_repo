(1..100).each do|i|
  fizz = if i % 3 == 0 then 'fizz' 
	end
  buzz = if i % 5 == 0 then 'buzz' 
	end
  puts "#{i} #{fizz}#{buzz}"
end