/**
 * @param {character[][]} grid
 * @return {number}
 */
var numIslands = function (grid) {
  let count = 0;

  for (let i = 0; i < grid.length; ++i) {
    for (let j = 0; j < grid[i].length; ++j) {
      if (grid[i][j] === "1") {
        count++;
        visit(grid, i, j);
      }
    }
  }

  return count;
};

var visit = function (grid, row, col) {
  if (!grid[row] || grid[row][col] !== "1") {
    return;
  } else {
    grid[row][col] = "visited";
    visit(grid, row - 1, col);
    visit(grid, row + 1, col);
    visit(grid, row, col - 1);
    visit(grid, row, col + 1);
  }
};