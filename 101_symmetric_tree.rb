# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?

  symmetric?(root.left, root.right)
end

def symmetric?(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?
  return false if left.val != right.val
  
  return false if !symmetric?(left.left, right.right)
  return false if !symmetric?(right.left, left.right)
  
  true
end