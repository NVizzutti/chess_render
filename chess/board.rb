require_relative "piece"
require 'colorize'

class Board
  attr_reader :grid

  def initialize
    setup
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
  end

  def valid_position?(pos)
    pos.all? { |el| el.between?(0, 7) }
  end

  def setup
    @grid = Array.new(8) { Array.new(8) }
    @grid.each_with_index do |row, index|
      if index < 2 || index > 5
        row.map! { |el| el = Piece.new }
      else
        row.map! { |el| el = nil }
      end
    end
  end

  def move_piece(start_pos, end_pos)
    raise "Nothing there!" if self[start_pos].nil?
    raise "Illegal move!" unless self[end_pos].nil?
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end
  #
  # def render
  #   print "    0 | 1 | 2 | 3 | 4 | 5 | 6 | 7"
  #   @grid.each_with_index do |row, index|
  #     print "\n"
  #     puts "-----------------------------------"
  #     print "#{index} |"
  #
  #     row.each do |space|
  #       if space.is_a?(Piece)
  #         print " #{space.name} |"
  #       else
  #         print '   |'
  #       end
  #     end
  #   end
  # end


end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  board.setup
end
