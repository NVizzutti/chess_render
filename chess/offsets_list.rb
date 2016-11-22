class King
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
end

class Knight
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
end

class Bishop
  OFFSETS = [
    [-1, -1],
    [-1, 1],
    [1, 1],
    [1, -1]
  ]
end

class Castle
  OFFSETS = [
    [-1, 0],
    [0, 1],
    [1, 0],
    [0, -1]
  ]
end

class Queen
  
end

class Pawn
end

class NullPiece
end
