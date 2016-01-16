puts "What is the source file?"
source_file = gets.chomp
puts "What is the name of the file?"
name_of_file = gets.chomp
source_file_contents = IO.read(source_file)
IO.write(name_of_file, source_file)  
