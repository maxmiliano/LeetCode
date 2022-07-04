# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  return nil if head.nil? || head.next.nil?
  visited_nodes = []
  current_node = head
  
  while (!current_node.next.nil?)
    if visited_nodes.include?(current_node.next)
      return current_node.next
    end
    visited_nodes.push(current_node)
    current_node = current_node.next
  end
  
  return nil
end