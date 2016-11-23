# require_relative "./pieces/piece.rb"
require_relative "./pieces/castle.rb"
require_relative "./pieces/knight.rb"
require_relative "./pieces/king.rb"
require_relative "./pieces/queen.rb"
require_relative "./pieces/pawn.rb"
require_relative "./pieces/nullpiece.rb"
require_relative "./pieces/bishop.rb"
require 'colorize'
require 'byebug'

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
    @grid.each_with_index do |row, index1|
      if index1 == 0 || index1 == 7
        row.each_with_index do |spot, index2|
          # debugger
          @grid[index1][index2] = Castle.new(self, [index1, index2]) if index2 == 0 || index2 == 7
          @grid[index1][index2] = Knight.new(self, [index1, index2]) if index2 == 1 || index2 == 6
          @grid[index1][index2] = Bishop.new(self, [index1, index2]) if index2 == 2 || index2 == 5
          @grid[index1][index2] = Queen.new(self, [index1, index2]) if index2 == 3
          @grid[index1][index2] = King.new(self, [index1, index2]) if index2 == 4
        end
      elsif index1 == 1 || index1 == 6
        row.each_with_index do |spot, index2|
          @grid[index1][index2] = Pawn.new(self, [index1, index2])
        end
      else
        row.each_with_index do |spot, index2|
          @grid[index1][index2] = NullPiece.new(self, [index1, index2])
        end
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
