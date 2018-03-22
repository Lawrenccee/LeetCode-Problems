# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  result = []
  words = []
  
  strs.each_with_index { |str, idx| words << [str.split("").sort.join, idx] }
  
  words = words.sort { |pair1, pair2| pair1.first <=> pair2.first }
  
  curr = words.first.first
  group = []
  
  words.each do |pair|
    if pair.first == curr
      group << strs[pair.last]
    else
      result << group
        group = [strs[pair.last]]
      curr = pair.first
    end
  end
  
  result << group
  result
end