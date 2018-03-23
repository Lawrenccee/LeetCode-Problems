# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  count = 0
  
  while n / 5 > 0
    count += n / 5
    n /= 5
  end
  
  count
end