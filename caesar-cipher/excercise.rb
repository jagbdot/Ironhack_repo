def solve_cipher(input)
  input.split("").each do |i|
    print "#{i}".ord, " "
  end
end

solve_cipher("ifmmp")
