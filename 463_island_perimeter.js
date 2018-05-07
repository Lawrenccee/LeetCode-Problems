/**
 * @param {number[][]} grid
 * @return {number}
 */
var islandPerimeter = function (grid) {
  let result = 0;

  for (let i = 0; i < grid.length; i++) {
    for (let j = 0; j < grid[i].length; j++) {
      let subRes = 4;

      if (grid[i][j] === 1) {
        if (grid[i - 1] && grid[i - 1][j] === 1) {
          subRes--;
        }
        if (grid[i + 1] && grid[i + 1][j] === 1) {
          subRes--;
        }
        if (grid[i][j - 1] === 1) {
          subRes--;
        }
        if (grid[i][j + 1] === 1) {
          subRes--;
        }

        result += subRes;
      }
    }
  }

  return result;
};