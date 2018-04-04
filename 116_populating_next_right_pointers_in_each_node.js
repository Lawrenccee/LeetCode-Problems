/**
 * Definition for binary tree with next pointer.
 * function TreeLinkNode(val) {
 *     this.val = val;
 *     this.left = this.right = this.next = null;
 * }
 */

/**
 * @param {TreeLinkNode} root
 * @return {void} Do not return anything, modify tree in-place instead.
 */
var connect = function (root) {
  if (root === null) {
    return;
  }

  let currHead = root;
  currHead.next = null;
  let curr = root.left;
  let nextHead = root.left;

  while (curr) {
    if (curr === currHead.left) {
      curr.next = currHead.right;
      curr = curr.next;
    } else {
      if (currHead.next) {
        currHead = currHead.next;
        curr.next = currHead.left;
        curr = curr.next;
      } else {
        currHead = nextHead;
        nextHead = currHead.left;
        curr.next = null;
        curr = currHead.left;
      }
    }
  }
};