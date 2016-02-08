def solve_cipher(input)
    input.split("").each do |i|
        if i == [97.chr..122.chr]
            print (("#{i}").ord - 1).chr, " "
        else print "#{i}".next
        end
    end
end

solve_cipher("a")


