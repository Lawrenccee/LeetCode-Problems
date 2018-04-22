/**
 * @param {number[][]} people
 * @return {number[][]}
 */
var reconstructQueue = function (people) {
  let sorted = people.sort((a, b) => {
    if (a[0] === b[0]) {
      return a[1] - b[1];
    } else {
      return b[0] - a[0];
    }
  });

  let result = [];

  for (let i = 0; i < sorted.length; i++) {
    result = result.slice(0, sorted[i][1]).concat([sorted[i]]).concat(result.slice(sorted[i][1]));
  }

  return result;
};
