/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number[][]}
 */
var zigzagLevelOrder = function (root) {
  if (!root) {
    return [];
  }

  let result = [];
  let subArr = [root.val];
  let lastRow = [root];
  let flip = true;

  while (lastRow.length > 0) {
    result.push(subArr);

    subArr = new Array;

    if (!flip) {
      lastRow = lastRow.reverse();
    }

    for (let i = 0; i < lastRow.length; ++i) {
      if (lastRow[i].left) {
        subArr.push(lastRow[i].left);
      }
      if (lastRow[i].right) {
        subArr.push(lastRow[i].right);
      }
    }

    if (flip) {
      subArr = subArr.reverse();
    }

    lastRow = subArr;
    subArr = subArr.map((el) => el.val);

    flip = !flip;
  }

  return result;
};