/**
 * Definition for binary tree
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */

/**
 * @constructor
 * @param {TreeNode} root - root of the binary search tree
 */
var BSTIterator = function (root) {
  this.stack = [];

  while (root !== null) {
    this.stack.push(root);
    root = root.left;
  }
};

/**
 * @this BSTIterator
 * @returns {boolean} - whether we have a next smallest number
 */
BSTIterator.prototype.hasNext = function () {
  return this.stack.length > 0;
};

/**
 * @this BSTIterator
 * @returns {number} - the next smallest number
 */
BSTIterator.prototype.next = function () {
  let result = this.stack.pop();
  let curr = result.right;

  while (curr !== null) {
    this.stack.push(curr);
    curr = curr.left;
  }

  return result.val;
};

/**
 * Your BSTIterator will be called like this:
 * var i = new BSTIterator(root), a = [];
 * while (i.hasNext()) a.push(i.next());
*/