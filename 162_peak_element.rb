# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
  return 0 if nums.length == 1

  nums.each_with_index do |num, idx|
    if idx == 0
      if nums[idx+1] && num > nums[idx+1]
        return idx
      end
    end
    if idx == nums.length-1
      if nums[idx-1] && num > nums[idx-1]
        return idx
      end
    end
    if num > nums[idx-1] && num > nums[idx+1]
      return idx
    end
  end
  
  # find_peak(nums, 0, nums.length-1)
end

# def find_peak(nums, beg, fin)
#   p "#{beg}, #{fin}"
#   return 0 if nums.length == 1
  
#   mid = (beg + fin) / 2
  
#   if (nums[mid] == 0 && nums[mid] >= nums[mid+1]) || 
#     (nums[mid] == nums.length - 1 && nums[mid] >= nums[mid-1]) 
#     mid
#   elsif mid > 0 &&  nums[mid] < nums[mid+1]
#     find_peak(nums, beg, mid-1)
#   else
#     find_peak(nums, mid+1, fin)
#   end
# end