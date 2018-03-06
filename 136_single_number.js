/**
 * @param {number[]} nums
 * @return {number}
 */
var singleNumber = function (nums) {
  // use bit manipulation
  let result = 0;

  nums.forEach((el) => {
    result = result ^ el;
  });

  return result;
};