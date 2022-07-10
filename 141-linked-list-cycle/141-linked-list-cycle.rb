# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  visited_nodes = Hash.new
  
  current = head
  pos = -1
  i = 0
  
  while(!current.nil?)
    if visited_nodes.has_value?(current)
      pos = visited_nodes.key(current)
      return true
    end
    
    visited_nodes[i] = current
    i += 1
    current = current.next
  end
  false
  
end