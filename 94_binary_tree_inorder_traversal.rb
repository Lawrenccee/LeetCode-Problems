# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}

# RECRUSIVE SOLUTION (TRIVIAL)
# def inorder_traversal(root)
#   return [] if root.nil?

#   inorder_traversal(root.left) + [root.val] + inorder_traversal(root.right)
# end

# ITERATIVE SOLUTION
def inorder_traversal(root)
  results = []
  stack = []
  stack.push(root)
  currNode = root

  until stack.empty?
    if currNode.nil?
      currNode = stack.pop

      if currNode
        results << currNode.val
        currNode = currNode.right
        stack.push(currNode)
      end
    end

    if currNode
      stack.push(currNode.left)
      currNode = currNode.left
    end
  end

  results
end