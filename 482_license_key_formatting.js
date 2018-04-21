/**
 * @param {string} S
 * @param {number} K
 * @return {string}
 */
var licenseKeyFormatting = function (S, K) {
  let upper = S.toUpperCase();
  upper = upper.split("-").join("");
  let first = upper.length % K;
  let result = upper.substring(0, first);

  for (let i = first; i < upper.length; i += K) {
    if (i === 0) {
      result += upper.substring(i, i + K);
    } else {
      result += "-" + upper.substring(i, i + K);
    }
  }

  return result;
};