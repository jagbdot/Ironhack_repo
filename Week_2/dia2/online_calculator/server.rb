require "sinatra"
require "sinatra/reloader" if development?
require_relative "lib/calculator.rb"

get "/" do
  erb(:operations)
end

# calculator

post "/operations" do

  operation = params[:operation]
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.new(first, second)
    case operation
      when "addition" 
      result.sum
      "The #{operation} of #{first} and #{second} is #{result.sum}"
      when "substraction" 
      result.substract
      "The #{operation} of #{first} and #{second} is #{result.substract}"
      when "multiplication" 
      result.multiply
      "The #{operation} of #{first} and #{second} is #{result.multiply}"
      when "division" 
      result.divide
      "The #{operation} of #{first} and #{second} is #{result.divide}"
      end
  end
