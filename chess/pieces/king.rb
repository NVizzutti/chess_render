require_relative "piece"
require_relative 'SteppingPiece'
# require_relative 'offsets_list'

class King < Piece
  include SteppingPiece

  OFFSETS = [
    [-1, 0],
    [-1, 1],
    [0, 1],
    [1, 1],
    [1, 0],
    [1, -1],
    [0, -1],
    [-1, -1]
  ]

  def initialize(board, pos)
    super(board, pos)
    @name = "K"
  end
end
