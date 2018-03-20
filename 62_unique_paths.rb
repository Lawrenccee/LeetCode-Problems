# @param {Integer} m
# @param {Integer} n
# @return {Integer}
# def unique_paths(m, n)
#   m -= 1
#   n -= 1
  
#   factorial(m+n)/(factorial(m) * factorial(n))
# end

# def factorial(num)
#   return 1 if num <= 1
#   num * factorial(num-1)
# end

# run time m+n?
# dynamic programming n^2 the initial conditions are the 
# first row and column set to 1 because there is only 1 path through them
def unique_paths(m, n)
  return 0 if m == 0 && n == 0
  return 1 if m == 0 && n == 1
  
  paths = Array.new(m) { Array.new(n) }
  
  m.times do |num|
    paths[num-1][0] = 1
  end
  
  n.times do |num|
    paths[0][num-1] = 1
  end
    
  (1..(m-1)).each do |row|
    (1..(n-1)).each do |col|
      paths[row][col] = paths[row-1][col] + paths[row][col-1]
    end
  end
      
  paths[m-1][n-1]
end