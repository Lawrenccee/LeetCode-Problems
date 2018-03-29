/**
 * @param {number[][]} board
 * @return {void} Do not return anything, modify board in-place instead.
 */
var gameOfLife = function (board) {
  let newBoard = board.map((arr) => arr.slice());

  for (let i = 0; i < board.length; ++i) {
    for (let j = 0; j < board[i].length; ++j) {
      newBoard[i][j] = update(board, i, j);
    }
  }

  for (let i = 0; i < board.length; ++i) {
    for (let j = 0; j < board[i].length; ++j) {
      board[i][j] = newBoard[i][j];
    }
  }
};

var update = function (board, row, col) {
  let countAlive = 0;

  for (let i = -1; i <= 1; ++i) {
    for (let j = -1; j <= 1; ++j) {
      if (!(i === 0 && j === 0)) {
        if (row + i >= 0 && row + i < board.length && col + j >= 0 && col + j < board[row].length) {
          countAlive += board[row + i][col + j];
        }
      }
    }
  }

  if (board[row][col] === 1) {
    if (countAlive === 2 || countAlive === 3) {
      return 1;
    }
    return 0;
  } else {
    if (countAlive === 3) {
      return 1;
    }
    return 0;
  }
};