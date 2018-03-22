# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  return 0 if nums.length == 0
  
  max = 0
  
  present = Hash.new
  
  nums.each { |num| present[num] = true }
  
  nums.each do |num|
    count = 0
    
    unless present[num-1]
      curr_num = num
      while present[curr_num]
        count += 1
        curr_num += 1
      end
      
      if count > max
        max = count
      end
    end
  end

  max
end