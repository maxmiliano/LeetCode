# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  stackA = linkedListToStack(headA)
  stackB = linkedListToStack(headB)
  
  intersectVal = 0
  intersection_node = nil
  
  
  while((stackA.last == stackB.last) && !stackA.empty? && !stackB.empty?)
    intersection_node = stackA.pop 
    stackB.pop
  end
  
  intersection_node
  
end

def linkedListToStack(head)
  arr = []
  current = head
  while (!current.nil?)
    arr << current
    current = current.next
  end
  arr
end