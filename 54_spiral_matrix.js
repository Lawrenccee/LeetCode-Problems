/**
 * @param {number[][]} matrix
 * @return {number[]}
 */
var spiralOrder = function (matrix) {
  if (matrix.length <= 0) {
    return [];
  }

  let result = [];
  let horBeg = 0;
  let horEnd = matrix[0].length;
  let verBeg = 0;
  let verEnd = matrix.length;

  while (horBeg < horEnd && verBeg < verEnd) {
    for (let i = horBeg; i < horEnd; i++) {
      result.push(matrix[verBeg][i]);
    }

    verBeg++;

    for (let i = verBeg; i < verEnd; i++) {
      result.push(matrix[i][horEnd - 1]);
    }

    horEnd--;

    if (verBeg < verEnd) {
      for (let i = horEnd - 1; i >= horBeg; i--) {
        result.push(matrix[verEnd - 1][i]);
      }

      verEnd--;
    }

    if (horBeg < horEnd) {
      for (let i = verEnd - 1; i >= verBeg; i--) {
        result.push(matrix[i][horBeg]);
      }

      horBeg++;
    }
  }

  return result;
};