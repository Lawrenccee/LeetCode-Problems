/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number[]}
 */
var inorderTraversal = function (root) {
  let results = [];
  let stack = [root];

  let currNode = root;

  while (stack.length > 0) {
    while (currNode !== null) {
      stack.push(currNode.left);
      currNode = currNode.left;
    }

    currNode = stack.pop();

    if (currNode !== null) {
      results.push(currNode.val);
      stack.push(currNode.right);
      currNode = currNode.right;
    }
  }

  return results;
};