# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
  matrix = matrix.flatten
  matrix.sort!
  matrix[k-1]
end

# More efficient way to do this is to build a min heap
# put all of the first row in the min heap, keep track of its row
# and column. including the putting first row, do k times
# insert element and remove min. Replace that element
# with the next element from the same column next row
# the last element removed should be the kth smallest