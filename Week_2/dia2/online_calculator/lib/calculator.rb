class Calculator
  attr_reader :number1, :number2
  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end
  def sum
    number1 + number2
  end
  def substract
    number1 - number2
  end
  def multiply
    number1 * number2
  end
  def divide
    number1 / number2
  end
end