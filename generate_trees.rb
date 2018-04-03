class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil
  end
end

def generate_trees(n)
  return [] if n == 0

  generate_trees_helper(1, n)
end

# Have root values from 1 to n
def generate_trees_helper(beg, fin)
  result = []

  return [nil] if beg > fin

  # for each root
  (beg..fin).each do |root|
    left_tree = generate_trees_helper(beg, root-1)
    right_tree = generate_trees_helper(root+1, fin)

    left_tree.each do |left|
      right_tree.each do |right|
        node = TreeNode.new(root)
        node.left = left
        node.right = right
        result << node 
      end
    end
  end

  result
end