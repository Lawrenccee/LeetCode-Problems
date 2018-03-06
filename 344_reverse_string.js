/**
 * @param {string} s
 * @return {string}
 */
var reverseString = function (s) {
  let chars = s.split("");

  for (let i = 0; i < Math.floor(chars.length / 2); ++i) {
    [chars[i], chars[chars.length - i - 1]] = [chars[chars.length - i - 1], chars[i]];
  }

  return chars.join("");
};

// Strings in javascript are IMMUTABLE!

console.log(reverseString("hello"));