/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} head
 * @return {boolean}
 */
// var isPalindrome = function (head) {
//   let vals = [];

//   while (head) {
//     vals.push(head.val);
//     head = head.next;
//   }

//   for (let i = 0; i < Math.floor(vals.length / 2); i++) {
//     if (vals[i] != vals[vals.length - i - 1]) {
//       return false;
//     }
//   }

//   return true;
// };

// O(n) time and O(1) SPACE!
/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} head
 * @return {boolean}
 */
var isPalindrome = function (head) {
  if (head === null) {
    return true;
  }

  let mid = head;
  let fast = head;

  while (fast.next && fast.next.next) {
    fast = fast.next.next;
    mid = mid.next;
  }

  let curr = mid.next;
  let prev = null;

  while (curr) {
    let next = curr.next;
    curr.next = prev;
    prev = curr;
    curr = next;
  }

  console.log(head);
  console.log(prev);

  while (prev) {
    if (head.val !== prev.val) {
      return false;
    }

    head = head.next;
    prev = prev.next;
  }

  return true;
};