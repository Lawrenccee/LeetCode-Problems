/**
 * @param {number[]} nums
 * @return {number}
 */
var longestConsecutive = function (nums) {
  let counts = {};
  let result = 0;

  nums.forEach((num) => {
    counts[num] = true;
  });

  for (let key in counts) {
    key = parseInt(key);

    let subCount = 1;

    if (!counts[key - 1]) {
      while (counts[key + subCount]) {
        subCount++;
      }

      if (subCount + 1 > result) {
        result = subCount;
      }
    }
  }

  return result;
};