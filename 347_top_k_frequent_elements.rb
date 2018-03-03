# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  counts = Hash.new(0)
  
  nums.each { |num| counts[num] += 1 }
  
  counts.to_a.sort { |pair1, pair2| pair2.last <=> pair1.last }.map{ |pair| pair.first }[0...k]
end