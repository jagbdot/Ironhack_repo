require 'pry'

# Array de dos dimensiones
# board = Array.new(8) { Array.new(8,"-") }
# board.each do |b|
#   print b
#   puts ""
# end

# Modulo de movimientos
module Check_move
  # movimiento vertical
  def check_vertical(x, y)
    if (@x == x || @y == y)
      true
    else
      false
    end
  end
  # movimiento diagonal
  def check_diagonal(x, y)
    if ((@x - x).abs == (@y - y).abs)
      true
    else
      false
    end
  end
end

# Clase padre
class Piece
  def initialize(x, y)
    @x = x
    @y = y
  end
end

# Clase hija
class Rook < Piece
  include Check_move
  def move x, y
    if (check_vertical x, y) == true
      puts "El movimiento de la torre es Legal"
    else
      puts "El movimiento de la torre es Ilegal"
    end
  end
end

# Clase hija
class Bishop < Piece
  include Check_move
  def move x, y
    if (check_diagonal x, y) == true
      puts "El movimiento del alfil es Legal"
    else
      puts "El movimiento del alfil es Ilegal"
    end
  end
end

# Clase hija
class Queen < Piece
  include Check_move
  def move x, y
    if (check_vertical x, y) && (check_diagonal x, y) == true
      puts "El movimiento de la reina es Legal"
    else
      puts "El movimiento de la reina es Ilegal"
    end
  end
end

pieza_torre = Rook.new(1, 0)
pieza_torre.move(1, 2)
pieza_alfil = Bishop.new(1, 0)
pieza_alfil.move(3, 2)
pieza_reina = Queen.new(1, 0)
pieza_reina.move(3, 2)

