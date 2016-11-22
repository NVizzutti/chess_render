require_relative 'board'
class Piece
  attr_accessor :name
  def initialize
    @name = "P"
  end

  def empty?
    self.is_a?(NullPiece)
  end

  def valid_moves(pos)
  end

end
