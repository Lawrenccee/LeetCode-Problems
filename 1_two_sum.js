/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function (nums, target) {
  let complements = {};

  for (let i = 0; i < nums.length; ++i) {
    if (complements[nums[i]] !== undefined) {
      return [complements[nums[i]], i];
    } else {
      complements[target - nums[i]] = i;
    }
  }

  return null;
};