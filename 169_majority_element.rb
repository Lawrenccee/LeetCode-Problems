# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  counts = Hash.new(0)

  nums.each { |num| counts[num] += 1 }

  counts.max_by { |key, val| val }[0]
end