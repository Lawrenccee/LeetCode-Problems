# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.length <= 0
  middle = nums.length / 2
  
  head = TreeNode.new(nums[middle])
  head.left = sorted_array_to_bst(nums[0...middle])
  head.right = sorted_array_to_bst(nums[middle+1..-1])
  
  head
end