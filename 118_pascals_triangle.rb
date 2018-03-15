# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows <= 0
  return [[1]] if num_rows == 1
  return [[1], [1,1]] if num_rows == 2
  
  pascals = [[1], [1,1]]
  
  until pascals.length == num_rows
    row = []
    
    pascals.last.each_with_index do |num, idx|
      if idx < pascals.last.length-1
        row << num + pascals.last[idx+1]
      end
    end
    
    pascals << [1] + row + [1]
  end
    
  pascals
end