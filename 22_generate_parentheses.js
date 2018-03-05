/**
 * @param {number} n
 * @return {string[]}
 */
var generateParenthesis = function (n) {
  var result = [];

  var generate = function (string, left, right) {
    if (string.length === 2 * n) {
      result.push(string);
      return;
    }
    if (left < n) {
      generate(string + "(", left + 1, right);
    }
    if (right < left) {
      generate(string + ")", left, right + 1);
    }
  };

  generate("", 0, 0);
  return result;
};