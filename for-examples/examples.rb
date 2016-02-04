class Car
attr_reader(:noise)
  def initialize(noise)
    @noise = noise
  end
  def recive_car
    another_car = "grrrr"
  end
end

auto = Car.new("broom")
puts auto.recive_car