# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  n = head  
  s = []
  
  s << head.val.to_s
  
  while n = n.next do
    s << n.val.to_s
  end
  # p s 
  s == s.reverse
  
end