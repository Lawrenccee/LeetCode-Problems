# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?
  return 1 if root.right.nil? && root.left.nil?

  right = 0
  left = 0

  if root.left 
    left = max_depth(root.left)
  end
  if root.right
    right = max_depth(root.right)
  end

  [left, right].max + 1
end