# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  return [[]] if nums.count == 0
  
  last = nums.last
  without_first = subsets(nums[0...-1])
  without_first + without_first.map { |el| el + [last] }
end