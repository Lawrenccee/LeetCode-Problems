# @param {String} s
# @return {String}
def reverse_string(s)
  start = 0

  while start < s.length / 2
    swap_index = s.length - 1 - start
    s[start], s[swap_index] = s[swap_index], s[start]
    
    start += 1
  end

  s
end

p reverse_string("hello")