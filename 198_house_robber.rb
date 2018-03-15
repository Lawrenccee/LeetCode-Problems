# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  # either the previous-1 solution is the max or your solution + the previous - 2
  return 0 if nums.length == 0
  return nums.max if nums.length < 3
  
  i = 2
  nums[i] = nums[i] + nums[0]
  i += 1
  
  while i < nums.length 
    if nums[i-2] > nums[i-3]
      nums[i] += nums[i-2]
    else
      nums[i] += nums[i-3]
    end
    
    i += 1
  end
  
  if nums.last > nums[-2]
    nums.last
  else
    nums[-2]
  end
end