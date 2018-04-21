/**
 * @param {string} input
 * @return {number}
 */
var lengthLongestPath = function (input) {
  let result = 0;
  let map = { "-1": 0 };
  let dirs = input.split("\n");

  for (let i = 0; i < dirs.length; i++) {
    let str = dirs[i];
    let level = str.lastIndexOf("\t") + 1;
    let name = str.substring(level);

    if (name.includes(".")) {
      result = Math.max(result, name.length + map[level - 1]);
    } else {
      map[level] = map[level - 1] + name.length + 1;
    }
  }

  return result;
};