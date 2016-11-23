require_relative "piece"
require_relative 'SteppingPiece'


class Knight < Piece
  include SteppingPiece

  OFFSETS = [
    [-2, 1],
    [-1, 2],
    [1, 2],
    [2, 1],
    [2, -1],
    [1, -2],
    [-1, -2],
    [-2, -1]
  ]

  def initialize(board, pos)
    super(board, pos)
    @name = "H"
  end
end

# knight = Knight.new()
# p knight.possible_moves([3, 3])
