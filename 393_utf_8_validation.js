/**
 * @param {number[]} data
 * @return {boolean}
 */
var validUtf8 = function (data) {
  let count = 0;

  for (let i = 0; i < data.length; i++) {
    let num = data[i];

    if (count === 0) {
      if (((num & 240) === 240) && ((num & 248) === 240)) {
        count = 3;
      } else if (((num & 224) === 224) && ((num & 240) === 224)) {
        count = 2;
      } else if (((num & 192) === 192) && ((num & 224) === 192)) {
        count = 1;
      } else if ((num | 127) === 127) {
        count = 0;
      } else {
        return false;
      }
    } else {
      if (((num & 128) === 128) && ((num & 192) === 128)) {
        count--;
      } else {
        return false;
      }
    }
  }

  return count === 0;
};