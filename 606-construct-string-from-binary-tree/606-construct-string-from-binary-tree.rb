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
# @return {String}
def tree2str(root)
  
  return "" if root.nil?
  
  sol = root.val.to_s
  
  sol << "(#{tree2str(root.left)})" unless (root.left.nil?)
  unless (root.right.nil?)
    sol << "()" if root.left.nil?
    sol <<  "(#{tree2str(root.right)})"
  end
  
  return sol
end