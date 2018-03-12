# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  result = []
  hash = Hash.new(0)
  
  nums1.each { |el| hash[el] += 1 }
  nums2.each do |el| 
    if hash[el] > 0
      result << el
      hash[el] -= 1
    end
  end
  
  result
end