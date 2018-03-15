# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  count = 0
  
  until n == 0
    if (n & 1) == 1
      count += 1
    end
    
    n = n >> 1
  end
  
  count
end