# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  counts = Hash.new { |h, k| h[k] = [0, -1] }
  
  s.each_char.with_index do |char, idx|
    counts[char][0] += 1
    counts[char][1] = idx if counts[char][0] == 1
  end
  
  s.each_char do |char|
    return counts[char][1] if counts[char][0] == 1
  end
  
  -1
end

# Below looks cleaner btw

# @param {String} s
# @return {Integer}
# def first_uniq_char(s)
#   counts = Hash.new(0)
  
#   s.each_char do |char|
#     counts[char] += 1
#   end
  
#   s.each_char.with_index do |char, idx|
#     return idx if counts[char] == 1
#   end
  
#   -1
# end