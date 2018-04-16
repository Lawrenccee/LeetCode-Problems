# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  result = []
  return result if nums.nil? || nums.length < 3  
  
  nums = nums.sort

  index1 = 0
  
  while index1 < nums.length - 2
    if index1 == 0 || nums[index1] > nums[index1-1]
      index2 = index1 + 1
      index3 = nums.length - 1

      while index2 < index3
        num1 = nums[index1]
        num2 = nums[index2]
        num3 = nums[index3]

        if num1 + num2 + num3 == 0
          result << [num1, num2, num3]

          index2 += 1
          index3 -= 1

          while index2 < index3 && nums[index2] == nums[index2-1]
            index2 += 1
          end

          while index2 < index3 && nums[index3] == nums[index3+1]
            index3 -= 1
          end
        elsif num1 + num2 + num3 > 0
          index3 -= 1
        else
          index2 += 1
        end
      end
    end
    
    index1 += 1
  end
  
  result
end