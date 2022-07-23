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
def inorder_traversal(root)
  
  inorder_values = Array.new
  
  inorder(inorder_values, root)
  
  return inorder_values 
end

def inorder(values, node)
  return if node.nil?
  inorder(values, node.left)
  values << node.val
  inorder(values, node.right)
end
