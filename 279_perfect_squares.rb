# @param {Integer} n
# @return {Integer}
def num_squares(n, cache={0 => 0, 1 => 1, 2 => 2, 3 => 3})
  return cache[n] if cache[n]
  
  num = 4
  while num <= n
    cache[num] = num
    
    i = 1
    while i*i <= num
      cache[num] = [cache[num], 1 + cache[num-i*i]].min
      i += 1
    end
    
    num += 1
  end 
  
  cache[n]
end