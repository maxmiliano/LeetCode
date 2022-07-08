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
# @return {Boolean}
def is_valid_bst(root)
  
  return true if root.nil?
  
  is_left_valid = root.left.nil? || (is_valid_bst(root.left) && (root.val > find_greatest(root.left)))
  is_right_valid = root.right.nil? || (is_valid_bst(root.right) && (root.val < find_lowest(root.right)))
  
  return  is_left_valid && is_right_valid
  
end

def find_lowest(node)
  n = node
  while(!n.left.nil?)
    n = n.left
  end
  
  return n.val
end

def find_greatest(node)
  n = node
  while(!n.right.nil?)
    n = n.right
  end
  return n.val
end