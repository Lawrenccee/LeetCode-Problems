# @param {Integer[]} nums
# @return {Integer}
# def single_number(nums)
#   counts = Hash.new(0)

#   nums.each {|el| counts[el] += 1}

#   counts.each do |key, val|
#     return key if val == 1
#   end
# end

# USING BIT MANIPULATION FOR CONSTANT SPACE
def single_number(nums)
  result = 0

  nums.each { |el| result ^= el }

  result
end

p single_number([1,1,2,3,3,4,4])