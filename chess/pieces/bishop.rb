require_relative "piece"

class Bishop < Piece
  def initialize(board, pos)
    @name = 'B'
    super(board, pos)
  end

  def move_direction
    
  end
end
