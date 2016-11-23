module SteppingPiece
  def possible_moves
    possible_moves = []
    self.class.const_get(:OFFSETS).each do |diff|
      possible_moves << [diff[0] + self.current_pos[0], diff[1] + self.current_pos[1]]
    end
    possible_moves
   end
end
