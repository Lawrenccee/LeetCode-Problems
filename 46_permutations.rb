# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  return [[]] if nums.count == 0
  result = []
  
  last = nums[-1]
  rest = nums[0...-1]
  
  rest_perm = permute(rest)
  rest_perm.each do |perm|
    (0..perm.length).each do |pos|
      result << perm.drop(pos) + [last] + perm.take(pos)
    end
  end
  
  result
end

