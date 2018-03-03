# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  result = Array.new(nums.length, 1)
  lower_prod = 1
  upper_prod = 1
  
  nums.each_with_index do |num, idx|
    result[idx] *= lower_prod
    result[-(idx+1)] *= upper_prod

    lower_prod *= num
    upper_prod *= nums[-(idx+1)]
  end

  result
end