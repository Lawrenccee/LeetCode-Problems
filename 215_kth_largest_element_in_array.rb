# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  nums.sort!.reverse![k-1]
end

# or implement min/max heap and use that