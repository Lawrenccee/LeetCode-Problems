# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  m -= 1
  n -= 1
  
  factorial(m+n)/(factorial(m) * factorial(n))
end

def factorial(num)
  return 1 if num <= 1
  num * factorial(num-1)
end

# run time m+n?