# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)

  current = head
  prev = nil
  
  while(!current.nil?) do
    if current.val == val
      if prev.nil?
        # removing the head (head.next will become the new head)
        current = head = current.next
      else
        # we are removing intermediary node or tail
        prev.next = current = current.next
      end
    else
      # current.val != val, let's keep moving
      prev = current
      current = current.next 
    end
  end
  
  return head
  
end