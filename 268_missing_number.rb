# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  sum = nums.reduce(:+)
  all = nums.length * (nums.length + 1) / 2
  return all-sum
end