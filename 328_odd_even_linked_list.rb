# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return head if head.nil?
  count = 0
  odd = head
  first_even = head.next
  even = head.next
  
  curr = head.next unless head.nil?
  curr = curr.next unless curr.nil?
  
  until curr.nil?
    if even.next == curr
      odd.next = curr
      odd = curr
    else
      even.next = curr
      even = curr
    end
    
    curr = curr.next
    count += 1    
  end
  
  odd.next = first_even
  even.next = nil
  head
end

one = ListNode.new(1)
two = ListNode.new(2)
three = ListNode.new(3)
four = ListNode.new(4)
five = ListNode.new(5)

one.next = two
two.next = three
three.next = four
four.next = five

list = (odd_even_list(one))

curr = list

until curr.nil?
  p curr
  curr = curr.next
end