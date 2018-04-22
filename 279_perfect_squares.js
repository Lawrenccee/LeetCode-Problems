/**
 * @param {number} n
 * @return {number}
 */
var numSquares = function (n) {
  let cache = { 0: 0, 1: 1, 2: 2, 3: 3 };
  cache[n] = numsSquaresHelper(n, cache);
  return cache[n];
};

function numsSquaresHelper(n, cache) {
  if (n <= 0) {
    return 0;
  }

  if (cache[n]) {
    return cache[n];
  }

  let num = 4;

  while (num <= n) {
    cache[num] = num;

    for (let i = 1; i * i <= num; i++) {
      cache[num] = Math.min(cache[num], 1 + cache[num - i * i]);
    }

    num++;
  }

  return cache[n]
}