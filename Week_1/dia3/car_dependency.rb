class Car
  def initialize(noise, engine)
    @noise = sound
    @engine = engine
  end
  def make_noise
    puts @noise + @engine.make_noise
  end
end

class Engine
  def initialize(noise, cilinders)
    @noise = sound
    @cilinders = cilinders
  end
  def make_noise
    puts @noise
  end
end

motor_chungo = Engine.new("jjjs", "1")
motor_f1 = Engine.new("bbbbbbb", "16")
new_car = Car.new("sjdjsk", motor_chungo)
good_car = Car.new("buuuum", motor_f1)