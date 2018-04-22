/**
 * @param {number[][]} matrix
 * @return {number[][]}
 */
var pacificAtlantic = function (matrix) {
  if (matrix.length === 0) {
    return [];
  }

  let result = [];
  let pacific = [];
  let atlantic = [];
  let m = matrix.length;
  let n = matrix[0].length;

  for (let i = 0; i < m; i++) {
    pacific.push(new Array(n));
    atlantic.push(new Array(n));
  }

  for (let i = 0; i < m; i++) {
    dfs(i, 0, pacific, matrix, m, n);
  }

  for (let i = 0; i < n; i++) {
    dfs(0, i, pacific, matrix, m, n);
  }

  for (let i = 0; i < m; i++) {
    dfs(i, n - 1, atlantic, matrix, m, n);
  }

  for (let i = 0; i < n; i++) {
    dfs(m - 1, i, atlantic, matrix, m, n);
  }

  for (let i = 0; i < m; i++) {
    for (let j = 0; j < n; j++) {
      if (atlantic[i][j] === 1 && pacific[i][j] === 1) {
        result.push([i, j]);
      }
    }
  }

  return result;
};

var dfs = function (row, col, visited, matrix, rowLength, colLength) {
  visited[row][col] = 1;

  if (row - 1 >= 0 && matrix[row - 1][col] >= matrix[row][col] && visited[row - 1][col] !== 1) {
    dfs(row - 1, col, visited, matrix, rowLength, colLength);
  }
  if (row + 1 < rowLength && matrix[row + 1][col] >= matrix[row][col] && visited[row + 1][col] !== 1) {
    dfs(row + 1, col, visited, matrix, rowLength, colLength);
  }
  if (col - 1 >= 0 && matrix[row][col - 1] >= matrix[row][col] && visited[row][col - 1] !== 1) {
    dfs(row, col - 1, visited, matrix, rowLength, colLength);
  }
  if (col + 1 < colLength && matrix[row][col + 1] >= matrix[row][col] && visited[row][col + 1] !== 1) {
    dfs(row, col + 1, visited, matrix, rowLength, colLength);
  }
};