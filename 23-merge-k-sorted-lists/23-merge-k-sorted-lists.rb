# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return [] if lists.empty?
  
  while (lists.size > 1)
    lists = lists.each_slice(2).map do |l, r|
      merge_two_lists(l, r)
    end
  end
  
  lists.first
  
end

def merge_two_lists(l1, l2)
  return l2 if l1.nil?
  return l1 if l2.nil?
  
  if (l1.val <= l2.val)
    l1.next = merge_two_lists(l1.next, l2)
    l1
  else
    l2.next = merge_two_lists(l1, l2.next)
    l2
  end
end 
