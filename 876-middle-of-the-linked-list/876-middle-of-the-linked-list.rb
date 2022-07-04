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
def middle_node(head)
  hash = Hash.new
  
  current_node = head
  middle_so_far = head
  return head if head.next.nil?
  i = 0
  while(!current_node.next.nil?)
    current_node = current_node.next
    i += 1
    middle_so_far = middle_so_far.next if (i.odd?)
    # p [i, middle_so_far.val]
  end
  return middle_so_far
end