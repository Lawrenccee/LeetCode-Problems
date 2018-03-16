# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  row = matrix.length-1
  col = 0
  
  while row >= 0 && col < matrix[0].length
    if matrix[row][col] > target
      row -= 1
    elsif matrix[row][col] < target
      col += 1
    else
      return true
    end
  end
  
  false
end