# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  n1 = l1
  n2 = l2
  
  solution = ListNode.new
  ns = solution
  sum = 0
  
  while(!ns.nil?) do
    sum += n1.val unless n1.nil?
    sum += n2.val unless n2.nil?
    sum, ns.val = sum.divmod(10)
    n1 = n1.next unless n1.nil?
    n2 = n2.next unless n2.nil?
    ns.next = ListNode.new unless ((n1.nil? && n2.nil?) && (sum == 0))
    ns = ns.next 
  end
  
  solution
end