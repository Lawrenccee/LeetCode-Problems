# @param {Integer} x
# @return {Integer}
# def reverse(x)
#   boundaries = [-2**31, 2**31-1]
#   negative = x < 0 ? -1 : 1
  
#   reversed = x.abs.to_s.chars.reverse
  
#   result = (reversed.join.to_i) * negative
  
#   return 0 if result < boundaries.first || result > boundaries.last
  
#   result
# end

# PROBABLY A BETTER WAY TO DO THIS

# USING NO STRING

def reverse(x)
  boundaries = [-2**31, 2**31-1]
  negative = x < 0 ? -1 : 1
  x = x.abs 
  result = 0

  while x > 0
    result *= 10
    result += x % 10
    x /= 10
  end

  return 0 if result < boundaries.first || result > boundaries.last
  
  result * negative
end

p reverse(-321)
p reverse(123)
p reverse(12345678901231243)
