# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  counts = Hash.new(0)
  
  s.each_char { |char| counts[char] += 1 }
  t.each_char { |char| counts[char] -= 1 }
  
  counts.all? { |k, v| v == 0 }
end