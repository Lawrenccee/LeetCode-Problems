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
def add_two_numbers(l1, l2)
    head = l1.val + l2.val
    overflow = head / 10
    headNode = ListNode.new(head % 10)
    l1 = l1.next
    l2 = l2.next
    
    currNode = headNode
    until l1.nil? && l2.nil?
        val1 = l1 ? l1.val : 0
        val2 = l2 ? l2.val : 0
        
        sum = val1 + val2 + overflow
        overflow = sum / 10
        currNode.next = ListNode.new(sum % 10)
        currNode = currNode.next
        
        l1 = l1.next if l1
        l2 = l2.next if l2
    end
    
    currNode.next = ListNode.new(overflow) if overflow > 0
    
    headNode
end