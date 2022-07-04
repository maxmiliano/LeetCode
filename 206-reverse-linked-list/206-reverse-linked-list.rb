# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return [] if head.nil?
  reversed = []
  current = head
  reversed = ListNode.new(current.val) 
  while(!current.next.nil?)
    current = current.next
    reversed = ListNode.new(current.val, reversed)
  end
  
  reversed
  
end
