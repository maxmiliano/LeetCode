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
  
  inorder(inorder_values, 0, root)
  
  return inorder_values 
end

def inorder(values, order, node)
  return if node.nil?
  inorder(values, order - 1, node.left)
  values << node.val
  inorder(values, order + 1, node.right)
end
