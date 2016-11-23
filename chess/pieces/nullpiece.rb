require_relative "piece"

class NullPiece < Piece
  def initialize(board, pos)
    super(board, pos)
    @name = " "
  end
end
