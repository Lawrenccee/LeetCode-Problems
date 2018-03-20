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
end