# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  result = []
  curr_level = []
  curr_level.push(root) unless root.nil?
  
  until curr_level.empty?
    level = []
    
    until curr_level.empty?
      element = curr_level.pop
      level.unshift(element) unless element.nil?
    end
    
    level.each do |node|
      curr_level.push(node.left) unless node.left.nil?
      curr_level.push(node.right) unless node.right.nil?
    end
    
    
    result << level.map { |el| el.val }
  end
  
  result
end