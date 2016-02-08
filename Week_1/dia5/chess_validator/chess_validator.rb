require 'pry'

#Array de dos dimensiones
board = Array.new(8) { Array.new(8,"-") }
board.each do |b|
  print b
  puts ""
end

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
  # movimiento en cuadrado
  def check_square(x, y)
    if ((@x == x || @y == y) && (@x - x == 1 || @y - y == 1)) 
      true
    else
      false
    end
  end
  # movimiento de arriba hacia bajo o alrevés
  def check_up_down(x, y, color)
    if @color = "b" && (@y == y) || (@x < x)
      true
    elsif @color = "w" && (@y == y) || (@x > x)
      true
    else
      false
    end
  end
  # movimiento en "L"
  def check_l(x, y)
    #if(((@x - x).abs) <= 2 || ((@y - y).abs) <= 2) && ((@x==2 && y==1) || (x==1 && y==2))
      if ((@x - x).abs) == 2 && ((@y - y).abs) == 1 || ((@x - x).abs) == 1 && ((@y - y).abs) == 2
      true
    else
      false
    end
  end
end

# Piezas en juego

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
    if (check_vertical x, y)
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
    if (check_diagonal x, y)
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
    if (check_vertical x, y) || (check_diagonal x, y)
      puts "El movimiento de la reina es Legal"
    else
      puts "El movimiento de la reina es Ilegal"
    end
  end
end

# Clase hija
class King < Piece
  include Check_move
  def move x, y
    if (check_square x, y) || (check_diagonal x, y)
      puts "El movimiento del rey es Legal"
    else
      puts "El movimiento del rey es Ilegal"
    end
  end
end

# Clase hija
class Pawn < Piece
  include Check_move
  def move x, y, color
    if (check_up_down x, y, color)
      puts "El movimiento del peón es Legal"
    else
      puts "El movimiento del peón es Ilegal"
    end
  end
end

# Clase hija
class Knight < Piece
  include Check_move
  def move x, y
    if (check_l x, y)
      puts "El movimiento del caballo es Legal"
    else
      puts "El movimiento del caballo es Ilegal"
    end
  end
end

pieza_torre = Rook.new(1, 0)
pieza_torre.move(1, 2)

pieza_alfil = Bishop.new(1, 0)
pieza_alfil.move(3, 2)

pieza_reina = Queen.new(0, 0)
pieza_reina.move(1, 1)

pieza_rey = King.new(0, 0)
pieza_rey.move(1, 1)

pieza_peon = Pawn.new(0, 0)
pieza_peon.move(1, 1, "b")

pieza_caballo = Knight.new(1, 0)
pieza_caballo.move(3, 1)
