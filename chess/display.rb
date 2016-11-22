require 'cursor'
require 'colorize'

class Display
  def initialize(board)
    @cursor_pos = Cursor.new([0,0], board)
    @board = board
  end

  def move_piece(start_pos, end_pos)
    raise "Nothing there!" if @board[start_pos].nil?
    raise "Illegal move!" unless @board[end_pos].nil?
    @board[start_pos], @board[end_pos] = @board[end_pos], @board[start_pos]
  end

  def render
    print "    0 | 1 | 2 | 3 | 4 | 5 | 6 | 7"
    @board.grid.each_with_index do |row, index|
      print "\n"
      puts "-----------------------------------"
      print "#{index} |"

      row.each do |space, index2|
        if space.is_a?(Piece)
          print " #{space.name} |"
        else
          print '   |'
        end
      end
    end
  end

end
