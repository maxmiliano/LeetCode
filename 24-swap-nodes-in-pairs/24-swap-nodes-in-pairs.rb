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
def swap_pairs(head)
  return head if head.nil? || head.next.nil?
  
  n1 = head
  n2 = head.next
  prev = nil
  
  while !n1.nil? && !n2.nil?
    # p ["head before", head]
    head = n2 if head == n1
    prev.next = n2 unless prev.nil?
    
    swap_two_nodes(n1, n2)
    # p ["head after", head]

    prev = n1
    n2 = n1.next.next unless n1.next.nil?
    n1 = n1.next
    # p ["prev", prev]
  end
  head
end

def swap_two_nodes(n1, n2)
  temp_n2_next = n2.next
  n2.next = n1
  n1.next = temp_n2_next
end