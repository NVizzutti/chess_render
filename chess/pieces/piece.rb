

class Piece

  attr_accessor :name
  def initialize(board, pos)
    @board = board
    @current_pos = pos
  end

  def empty?
    self.is_a?(NullPiece)
  end

  def valid_moves(all_possible)
    on_board = all_possible.select do |pos|
      pos.all? { |el| el.between?(0, 7) }
    end

  end

end
