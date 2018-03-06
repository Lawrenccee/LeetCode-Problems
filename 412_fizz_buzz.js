/**
 * @param {number} n
 * @return {string[]}
 */
var fizzBuzz = function (n) {
  let result = [];
  let numbers = [];
  for (let i = 1; i <= n; ++i) {
    numbers.push(i);
  }

  numbers.forEach((num) => {
    if (num % 3 === 0 && num % 5 === 0) {
      result.push("FizzBuzz");
    } else if (num % 3 === 0) {
      result.push("Fizz");
    } else if (num % 5 === 0) {
      result.push("Buzz");
    } else {
      result.push(num.toString());
    }
  });

  return result;
};

console.log(fizzBuzz(15));