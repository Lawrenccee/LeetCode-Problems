# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  red = 0
  blue = nums.length - 1
  i = 0
  
  while i < blue + 1
    if nums[i] == 0
      nums[i], nums[red] = nums[red], nums[i]
      red += 1
      i += 1
    elsif nums[i] == 2 
      nums[i], nums[blue] = nums[blue], nums[i]
      blue -= 1
    else
      i += 1
    end    
  end  
end

# can also do a 2 pass counting the number of each 0 1 2 and changing values