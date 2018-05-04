/**
 * @param {number} x
 * @return {number}
 */
var mySqrt = function (x) {
  if (x <= 0) {
    return 0;
  }

  let num = 1;

  while ((num + 1) * (num + 1) <= x) {
    num++;
  }

  return num;
};