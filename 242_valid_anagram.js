/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = function (s, t) {
  var counts = {};

  if (s.length !== t.length) {
    return false;
  }

  for (var i = 0; i < s.length; i++) {
    if (counts[s[i]]) {
      counts[s[i]]++;
    } else {
      counts[s[i]] = 1;
    }

    if (counts[t[i]]) {
      counts[t[i]]--;
    } else {
      counts[t[i]] = -1;
    }
  }

  for (var key in counts) {
    if (counts[key] !== 0) {
      return false;
    }
  }

  return true;
};