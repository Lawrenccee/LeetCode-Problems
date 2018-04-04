# @param {String} s
# @param {Integer} k
# @return {Integer}
require 'set'

def longest_substring(s, k)
  max = 0
  k_times = Set.new([])
  counts = Hash.new(0)
  
  s.each_char do |char|
    counts[char] += 1
    
    if counts[char] >= k 
      k_times.add(char)
    end
  end
    
  if counts.length === k_times.length
    return s.length
  end
  
  index = 0
  
  counts.each do |key, val|
    if val < k
      # Here why not split by the character instead then call max on all of them in the substr method
      s.each_char.with_index do |char, idx|
        if key == char
          index = idx
          break
        end
      end
    end
  end
  
  max = [longest_substring(s[0...index], k), longest_substring(s[(index+1)..-1], k)].max
  
end