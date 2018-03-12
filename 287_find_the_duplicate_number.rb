# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  nums.sort!
  
  nums.each_with_index do |num, idx|
    return num if num == nums[idx+1]
  end
end