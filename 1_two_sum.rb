# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    solution = Hash.new
    
    nums.each_with_index do |num, idx|
        if solution[num]
            return [solution[num], idx]
        else
            solution[target-num] = idx
        end
    end
end