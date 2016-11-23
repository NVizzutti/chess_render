require_relative "piece"

class Castle < Piece
  OFFSETS = [
    [-1, -1],
    [-1, 1],
    [1, 1],
    [1, -1]
  ]
  def initialize(board, pos)
    super(board, pos)
    @name = "C"
  end

  def move_direction
    :horizontal
  end
end
