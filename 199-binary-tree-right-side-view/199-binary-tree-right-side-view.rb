# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def right_side_view(root)
  tree_levels = Hash.new { |hash, key| hash[key] = Array.new }
  
  fill_level(root, 0, tree_levels)
  
  return [] if tree_levels.empty?
  
  tree_levels.sort.map{|k,v| v.last}
  
end

def fill_level(node, i, levels)
  return if node.nil? 
  levels[i].push(node.val)
  fill_level(node.left, i+1, levels)
  fill_level(node.right, i+1, levels)
end