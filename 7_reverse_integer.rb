# @param {Integer} x
# @return {Integer}
def reverse(x)
  boundaries = [-2**31, 2**31-1]
  negative = x < 0 ? -1 : 1
  
  reversed = x.abs.to_s.chars.reverse
  
  result = (reversed.join.to_i) * negative
  
  return 0 if result < boundaries.first || result > boundaries.last
  
  result
end

# PROBABLY A BETTER WAY TO DO THIS