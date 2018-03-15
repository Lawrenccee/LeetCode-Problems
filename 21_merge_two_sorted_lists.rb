# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l2 if l1.nil?
  return l1 if l2.nil?
    
  if l1.val < l2.val
    head = l1
    l1 = l1.next
  else
    head = l2
    l2 = l2.next
  end
  
  curr = head
  
  until l2.nil? || l1.nil?
    if l2.val < l1.val
      curr.next = l2
      curr = l2
      l2 = l2.next
    else
      curr.next = l1
      curr = l1
      l1 = l1.next
    end
  end
  
  if l2.nil?
    curr.next = l1
  else
    curr.next = l2
  end
  
  head
end