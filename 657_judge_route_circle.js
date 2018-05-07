/**
 * @param {string} moves
 * @return {boolean}
 */
var judgeCircle = function (moves) {
  let horizontal = 0;
  let vertical = 0;

  for (let i = 0; i < moves.length; i++) {
    switch (moves[i]) {
      case "U":
        vertical++;
        break;
      case "D":
        vertical--;
        break;
      case "L":
        horizontal++;
        break;
      case "R":
        horizontal--;
        break;
      default:
        break;
    }
  }

  return horizontal === 0 && vertical === 0;
};