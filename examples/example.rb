require "pry"

class StringCalculator
  def add(string)
    total = 0
    string.split(",").each do |number_in_string| 
      total += number_in_string.to_i 
    end
    total
  end
end

my_string = StringCalculator.new
puts my_string.add("thisisa new string")