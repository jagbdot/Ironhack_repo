user_name = ARGV.first
prompt = "> "
puts prompt
input = gets.chomp

class User_name
  def initialize(position)
    @position = [0]
  end
end

class Rooms
  def initialize(position, moves, decription)
    @position = []
    @moves = 
    @description
  end
  
end

rooms = [
  room1 = Rooms.new("0", ["N", "W", "S", "E"], "description"),
  room2 = Rooms.new("1", ["N", "W"], "description")
  room3 = Rooms.new("2", ["N", "E"], "description")
  room4 = Rooms.new("3", ["N", "W", "S", "E"], "description")
  room5 = Rooms.new("4", ["N", "W", "S", "E"], "description")
]


puts "description actual"
gets.chomp