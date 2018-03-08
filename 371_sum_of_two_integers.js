/**
 * @param {number} a
 * @param {number} b
 * @return {number}
 */
var getSum = function (a, b) {
  let max = 0x7FFFFFFF;
  let min = 0x80000000;
  let mask = 0xFFFFFFFF;

  while (b !== 0) {
    [a, b] = [(a ^ b) & mask, ((a & b) << 1) & mask];
  }

  return a;
};

// use ^ to add the two togther. Then get the overflows by & then and shift the overflows by 1 for the next bit