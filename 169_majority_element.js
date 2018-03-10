/**
 * @param {number[]} nums
 * @return {number}
 */
var majorityElement = function (nums) {
  let candidate;
  let count = 0;

  for (let i = 0; i < nums.length; ++i) {
    if (count === 0) {
      candidate = nums[i];
    }

    if (candidate === nums[i]) {
      count++;
    } else {
      count--;
    }
  }

  return candidate;
};

// SPACE COMPLEXITY IS SO MUCH BETTER O(n) time O(1) space