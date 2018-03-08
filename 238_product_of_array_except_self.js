/**
 * @param {number[]} nums
 * @return {number[]}
 */
var productExceptSelf = function (nums) {
  let results = [];
  for (let i = 0; i < nums.length; ++i) {
    results.push(1);
  }
  let upperProd = 1;
  let lowerProd = 1;

  for (let i = 0; i < nums.length; ++i) {
    results[i] *= lowerProd;
    results[nums.length - 1 - i] *= upperProd;

    lowerProd *= nums[i];
    upperProd *= nums[nums.length - 1 - i];
  }

  return results;
};