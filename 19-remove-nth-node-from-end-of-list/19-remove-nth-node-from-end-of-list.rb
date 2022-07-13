# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)

  stack = Array.new
  
  current = head
  
  while(!current.nil?)
    stack.push(current)
    current = current.next
  end
  
  return head.next if stack.length == n
  
  to_remove = stack[-n]
  prev = stack[-(n+1)]
  
  prev.next = to_remove.next
  
  return head
  
end