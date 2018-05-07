/**
 * @param {string} s
 * @param {string[]} wordDict
 * @return {boolean}
 */
var wordBreak = function (s, wordDict) {
  let dp = [];
  dp[0] = true;

  for (let i = 0; i < s.length; i++) {
    if (!dp[i]) {
      continue;
    }

    for (let j = 0; j < wordDict.length; j++) {

      if (s.slice(i, i + wordDict[j].length) === wordDict[j]) {
        dp[i + wordDict[j].length] = true;
      }
    }
  }

  return dp[s.length] === true;
};