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
def preorder_traversal(root)
  preorder_recursive(root)
end

def preorder_recursive(node)
  return [] if node.nil?
  return ([node.val] + preorder_recursive(node.left) + preorder_recursive(node.right))
end