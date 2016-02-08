require "rspec"
# require "pry"

# class StringCalculator
#   def make_sum(stringNumbers)
#     numbers = stringNumbers.split(",")
#     numbers.reduce(0) do |sum, num| 
#       sum+num.to_i
#     end
#   end
# end

# RSpec.describe "StringCalculator" do
#    let(:calculator) { StringCalculator.new }
#    before :each do
#     @calculator = StringCalculator.new
#    end 

#   it "returns 0 for the empty string" do
#     expect(@calculator.make_sum("")).to eq(0)
#   end

#   it "returns 3 for the string = " do
#     expect(@calculator.make_sum("3")).to eq(3)
#   end

#   it "returns 0 for the empty string" do
#     expect(@calculator.make_sum("3")).to eq(3,2)
#   end
# end

# que el software que etás ecribiendo funcione correctamente

class FizzBuzz
  def add value 
    if value % 3 == 0 && value % 5 == 0
      "FizzBuzz"
    elsif value % 3 == 0
      "Fizz"
    elsif value % 5 == 0
      "Buzz"
    else
      value
    end
  end
end

RSpec.describe "FizzBuzz" do

  before :each do
    fizzBuzz = FizzBuzz.new
  end

  it "return 1 if the number is 1" do
    expect(fizzbuzz.add(1)).to eq(1)
  end

  it "return 2 if the number is 2" do
    expect(fizzbuzz.add(2)).to eq(2)
  end

  it "return fizz si es divisible por 3" do
    expect(fizzbuzz.add(3)).to eq("Fizz")
  end

  it "return fizz si es divisible por 5" do
    expect(fizzbuzz.add(5)).to eq("Buzz")
  end

  it "return fizzBuzz si es divisible por 15" do
    expect(fizzbuzz.add(15)).to eq("FizzBuzz")
  end
end