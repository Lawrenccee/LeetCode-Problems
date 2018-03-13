# @param {Integer[]} nums
# @return {Integer}
# def find_duplicate(nums)
#   nums.sort!
  
#   nums.each_with_index do |num, idx|
#     return num if num == nums[idx+1]
#   end
# end

# BETTER TIME COMPLEXITY O(n) space O(1)
# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  fast = nums[0]
  slow = nums[0]

  while true
    slow = nums[slow]
    fast = nums[nums[fast]]

    break if fast == slow
  end

  ptr = nums[0]

  while ptr != slow
    ptr = nums[ptr]
    slow = nums[slow]
  end

  ptr
end

# takes k moves for fast to equal slow
# will take k more moves to get to the beginning of the cycle for the slow one
# new pointer uses k moves to find the duplicate? idk

# [1, 3, 5, 2, 1, 4]

# slow = 1, 3, 2, 5, 4, 1
# fast = 1, 3 2, 5 4, 1 3, 2 5, 4 1

# slow = 1
# fast = 1

# done

# [3, 4, 4, 2, 1]

# slow = 3, 2, 4
# fast = 3, 2 4, 1 4

# slow = 4, 1, 4
# fast = 3, 2, 4

# done