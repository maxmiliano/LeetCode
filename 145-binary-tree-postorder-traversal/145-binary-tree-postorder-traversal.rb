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
def postorder_traversal(root)
  postorder_recursive(root)
end

def postorder_recursive(node)
  return [] if node.nil?
  
  sol = []
  sol += postorder_recursive(node.left)
  sol += postorder_recursive(node.right)
  sol += [node.val]
  
  sol
end