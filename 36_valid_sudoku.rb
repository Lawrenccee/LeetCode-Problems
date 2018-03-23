# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  #check all 3x3s
  (0..(board.length-1)).each do |row|
    seen = Hash.new
    (0..(board.length-1)).each do |col|
      if board[row][col] != '.'
        if seen[board[row][col]]
          return false
        end
        seen[board[row][col]] = true
      end
    end
  end
  
  (0..(board.length-1)).each do |col|
    seen = Hash.new
    (0..(board.length-1)).each do |row|
      if board[row][col] != '.'
        if seen[board[row][col]]
          return false
        end
        seen[board[row][col]] = true
      end
    end
  end
  
  (0..2).each do |row|
    row = 3 * row
    (0..2).each do |col|
      col = 3 * col
      seen = Hash.new
      (0..2).each do |row_offset|
        (0..2).each do |col_offset|
          if board[row+row_offset][col+col_offset] != '.'
            if seen[board[row+row_offset][col+col_offset]]
              return false
            end
            seen[board[row+row_offset][col+col_offset]] = true
          end
        end
      end
    end
  end
  
  true
end