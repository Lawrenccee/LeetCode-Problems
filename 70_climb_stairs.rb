# @param {Integer} n
# @return {Integer}
def climb_stairs(n, cache = { 0 => 0, 1 => 1, 2 => 2})
  return cache[n] if cache[n]
  
  ans = climb_stairs(n-1, cache) + climb_stairs(n-2, cache)
  cache[n] = ans
  ans
end