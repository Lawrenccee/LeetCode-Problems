/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number[]}
 */
var topKFrequent = function(nums, k) {
  let counts = {};
  
  for (let i = 0; i < nums.length; ++i) {
    if (counts[nums[i]]) {
      counts[nums[i]]++;
    } else {
      counts[nums[i]] = 1;
    }
  }
  
  let keys = Object.keys(counts);
  keys.sort((a, b) => {
    return counts[b] - counts[a];
  });
  
  return keys.map((el) => parseInt(el) ).slice(0, k);
};