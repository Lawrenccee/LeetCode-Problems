/**
 * @param {number} n
 * @param {number[]} primes
 * @return {number}
 */
var nthSuperUglyNumber = function (n, primes) {
  // get prime factorization of a number and check if all its factors are in the primes?
  let result = [1];
  let seen = { 1: true };
  let nums = primes.slice();

  while (result.length < n) {
    nums.sort((a, b) => a - b); // no need for this if you store in min heap
    result.push(nums.shift());

    primes.forEach((prime) => { // k is num primes
      if (!seen[result[result.length - 1] * prime]) {
        seen[result[result.length - 1] * prime] = true;
        nums.push(result[result.length - 1] * prime); // store in min heap instead? log n for insertion
      }
    });
  }

  return result[n - 1];
};