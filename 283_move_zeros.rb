# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zero_idx = 0

  nums.each_with_index do |num, idx|
    if num != 0 
      nums[idx], nums[zero_idx] = nums[zero_idx], nums[idx]
      zero_idx += 1
    end
  end
  
  nums
end