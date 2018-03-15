# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.length
  
  (0...n/2).each do |row|
    (0...(n/2.0).ceil).each do |col|
      temp = matrix[row][col]
      matrix[row][col] = matrix[n-1-col][row]
      matrix[n-1-col][row] = matrix[n-1-row][n-1-col]
      matrix[n-1-row][n-1-col] = matrix[col][n-1-row]
      matrix[col][n-1-row] = temp
    end
  end

  matrix
end