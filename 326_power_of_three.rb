# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n < 0
  
  epsilon = 0.000000000001
  
  (Math.log(n) / Math.log(3) + epsilon) % 1 <= 2 * epsilon
end