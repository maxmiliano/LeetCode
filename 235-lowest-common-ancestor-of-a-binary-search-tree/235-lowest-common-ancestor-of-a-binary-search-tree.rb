# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)

  p_linage = find_ancestors(p, root)
  q_linage = find_ancestors(q, root)
  
  # Kernel.p [p_linage.map(&:val), q_linage.map(&:val)]

  common_val = p_linage.map(&:val) & q_linage.map(&:val)
  common_ancestors = p_linage.select{|n| common_val.include?(n.val)} + q_linage.select{|n| common_val.include?(n.val)}
  
  return (p_linage & q_linage).last
end

def find_ancestors(reference, node)
  return [node] if reference == node
  
  if (reference.val < node.val)
    return [node] + find_ancestors(reference, node.left)
  else
    return [node] + find_ancestors(reference, node.right) 
  end
end