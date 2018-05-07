/**
 * Definition for an interval.
 * function Interval(start, end) {
 *     this.start = start;
 *     this.end = end;
 * }
 */
/**
 * @param {Interval[]} intervals
 * @return {Interval[]}
 */
var merge = function (intervals) {
  intervals.sort((a, b) => {
    return a.start - b.start;
  });

  let visited = {};
  let result = [];

  for (let i = 0; i < intervals.length; i++) {
    let curr = intervals[i];

    if (visited[i]) {
      continue;
    }

    for (let j = i + 1; j < intervals.length; j++) {
      if (visited[j]) {
        continue;
      } else {
        if (curr.end >= intervals[j].start && curr.end <= intervals[j].end ||
          intervals[j].end >= curr.start && intervals[j].end <= curr.end) {
          curr = new Interval(Math.min(curr.start, intervals[j].start), Math.max(curr.end, intervals[j].end));
          visited[j] = true;
        }
      }
    }

    visited[i] = true;
    result.push(curr);
  }

  return result;
};