# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def preorder(root)
  return [] if root.nil? 
  result = []
  preorder_recursive(result, root)
  result
end

def preorder_recursive(result, root)
  result << root.val
  root.children.each do |child|
    preorder_recursive(result, child)
  end
end