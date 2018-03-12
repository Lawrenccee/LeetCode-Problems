# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  in_order(root)[k-1]
end

def in_order(root)
  return [] if root.nil?
  result = []
  
  result += in_order(root.left)
  result << root.val
  result += in_order(root.right)
  
  result
end

# Follow up:
# What if the BST is modified (insert/delete operations) often and you need to find the kth smallest frequently? How would you optimize the kthSmallest routine?