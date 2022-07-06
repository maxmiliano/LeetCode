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
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?

  levels = Hash.new{|h,k| h[k] = [] }
  recursive_level(root, levels)
  
  levels.values
end

def recursive_level(node, levels, l = 0)
  return if node.nil?

  levels[l].push(node.val) 
  # p [l, levels[l]]

  recursive_level(node.left, levels, l + 1)
  recursive_level(node.right, levels, l + 1)
  
  
end

