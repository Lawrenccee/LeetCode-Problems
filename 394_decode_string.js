/**
 * @param {string} s
 * @return {string}
 */
var decodeString = function (s) {
  let nums = [];
  let strs = [];
  let currNum = 0;
  let currString = "";

  for (let i = 0; i < s.length; i++) {
    if (s[i] >= 0 || s[i] <= 9) {
      currNum = currNum * 10 + parseInt(s[i]);
    } else if (s[i] === "[") {
      nums.push(currNum);
      currNum = 0;
      strs.push(currString);
      currString = "";
    } else if (s[i] === "]") {
      let top = strs.pop();
      if (top) {
        currString = top + currString.repeat(nums.pop());
      } else {
        currString = currString.repeat(nums.pop());
      }
    } else {
      currString += s[i];
    }
  }

  return currString;
};