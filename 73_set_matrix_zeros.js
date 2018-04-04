/**
 * @param {number[][]} matrix
 * @return {void} Do not return anything, modify matrix in-place instead.
 */
var setZeroes = function (matrix) {
  let rowZero = false;
  let colZero = false;

  for (let i = 0; i < matrix[0].length; ++i) {
    if (matrix[0][i] === 0) {
      rowZero = true;
      break;
    }
  }

  for (let i = 0; i < matrix.length; ++i) {
    if (matrix[i][0] === 0) {
      colZero = true;
      break;
    }
  }

  for (let i = 1; i < matrix.length; ++i) {
    for (let j = 1; j < matrix[i].length; ++j) {
      if (matrix[i][j] === 0) {
        matrix[i][0] = 0;
        matrix[0][j] = 0;
      }
    }
  }

  for (let i = 1; i < matrix.length; ++i) {
    for (let j = 1; j < matrix[i].length; ++j) {
      if (matrix[i][0] === 0 || matrix[0][j] === 0) {
        matrix[i][j] = 0;
      }
    }
  }

  if (rowZero) {
    for (let i = 0; i < matrix[0].length; ++i) {
      matrix[0][i] = 0;
    }
  }

  if (colZero) {
    for (let i = 0; i < matrix.length; ++i) {
      matrix[i][0] = 0;
    }
  }
};