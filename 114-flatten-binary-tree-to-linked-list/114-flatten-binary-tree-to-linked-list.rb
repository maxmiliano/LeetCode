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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  return if root.nil?
  
  return root if (root.left.nil? && root.right.nil?)
  
  unless (root.left.nil?)
    left = root.left # keep reference to left of root node
    flatten(left)
    root.left = nil # make root.left nil 
    
    ex_right = root.right
    root.right = left 
    
    # find left last node
    l_curr = left
    while (!l_curr.right.nil?) do
      l_curr = l_curr.right
    end
    
    # Most right node of left now points to the previous right of the node
    l_curr.right = ex_right
  end
  
    # Now let's flatten the rigth side from the previous right and forward
  flatten(root.right)

end
