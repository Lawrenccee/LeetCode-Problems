# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  return nums.max if nums.all? { |el| el < 0 }
  
  beg = 0
  max = 0
  max_here = 0
  
  while beg < nums.length
    if nums[beg] + max_here > 0
      max_here += nums[beg]
      
      if max_here > max
        max = max_here
      end
    else
      max_here = 0
    end
    
    beg += 1
  end
  
  max
end