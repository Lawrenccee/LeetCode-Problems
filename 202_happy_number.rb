# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  prev_sums = {}
  curr = n
 
  while true
    sum_digits = 0
    
    until curr == 0
      sum_digits += (curr % 10) * (curr % 10)
      curr /= 10
    end
    
    return true if sum_digits == 1
    
    if prev_sums[sum_digits]
      return false
    else
      prev_sums[sum_digits] = true
      curr = sum_digits
    end
  end
end

# eventually it should reach a cycle if it doesnt get to 1
# if we run into a sum we've seen before return false
# if the sum is 1 return true