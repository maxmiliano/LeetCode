# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  
  return nil if (root1.nil? && root2.nil?)
  
  val1 = root1.nil? ? 0 : root1.val 
  val2 = root2.nil? ? 0 : root2.val
  
  l1 = root1.nil? ? nil : root1.left
  l2 = root2.nil? ? nil : root2.left
  r1 = root1.nil? ? nil : root1.right
  r2 = root2.nil? ? nil : root2.right
  
  return TreeNode.new(val1 + val2, merge_trees(l1, l2), merge_trees(r1, r2))
  
end