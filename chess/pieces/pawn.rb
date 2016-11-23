require_relative "piece"

class Pawn < Piece
  def initialize(board, pos)
    super(board, pos)
    @name = "P"
  end
end
