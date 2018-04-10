// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode next;
  ListNode(int x) {
    val = x;
    next = null;
  }
}

public class linked_list_cycle {  
  public static boolean hasCycle(ListNode head) {
    ListNode slow = head;
    ListNode fast = head;
    
    while (fast != null && fast.next != null) {
      fast = fast.next.next;
      slow = slow.next;
      
      if (fast == slow) {
        return true;
      }
    }
    
    return false;
  }

  public static void main(String[] args) {
    ListNode head = new ListNode(1);
    ListNode next = new ListNode(2);
    ListNode last = new ListNode(3);

    head.next = next;
    next.next = last;
    last.next = next;

    System.out.println(hasCycle(head));
  }
}