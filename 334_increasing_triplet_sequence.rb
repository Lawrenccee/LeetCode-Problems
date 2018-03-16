# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  lowest_second = nil
  curr_start = nil
  
  nums.each do |num|
    if !lowest_second.nil? && num > lowest_second
      return true
    end
    
    if curr_start.nil? || num < curr_start
      curr_start = num
    end
    
    if num > curr_start
      if lowest_second.nil? || num < lowest_second
        lowest_second = num
      end
    end
  end
  
  false
end