require_relative "piece"

class Queen < Piece
  OFFSETS = [
    [-1, -1],
    [-1, 1],
    [1, 1],
    [1, -1],
    [-1, -1],
    [-1, 1],
    [1, 1],
    [1, -1]
  ]
  def initialize(board, pos)
    super(board, pos)
    @name = "Q"
  end

  def move_direction

  end
end
