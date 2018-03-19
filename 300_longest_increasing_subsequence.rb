# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  # check if number is greater than curr, set it to highest, and max to how many seen so far
  # if higher than curr check if high than max something about resetting
  return 0 if nums.length == 0
  
  maxes = Array.new(nums.length, 0)
  
  nums.each_with_index do |num, idx|
    curr_max = 0
    
    (0..idx).each do |idx2|
      if num > nums[idx2] && curr_max < maxes[idx2]
        curr_max = maxes[idx2]
      end
      
      maxes[idx] = curr_max + 1
    end
    
  end
  
  maxes.max
end