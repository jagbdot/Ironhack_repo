require "pry"

class Command_line
  def initialize(user, password)
    @user = user
    @password = password
  end
  def ask
    puts "Enter your password"
    password = gets.chomp
      if password == @password
        puts "Thats good! Now enter a text"
        text = gets.chomp
        puts text.split.size
      else
        puts "Not correct, please enter your password"
        ask
      end 
  end
end

usuario1 = Command_line.new("usuario1", "123456")
usuario1.ask
