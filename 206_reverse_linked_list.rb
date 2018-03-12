# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if head.nil?
  
  curr = head.next
  prev = head 
  head.next = nil
  
  until curr.nil?
    temp = curr.next
    curr.next = prev
    prev = curr
    curr = temp
  end
  
  prev
end