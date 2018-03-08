/**
 * @param {number[]} nums
 */
var Solution = function (nums) {
  this.original = nums.slice();
  this.nums = nums;
};

/**
 * Resets the array to its original configuration and return it.
 * @return {number[]}
 */
Solution.prototype.reset = function () {
  this.nums = this.original.slice();
  return this.nums;
};

/**
 * Returns a random shuffling of the array.
 * @return {number[]}
 */
Solution.prototype.shuffle = function () {
  for (let i = this.nums.length - 1; i > 0; --i) {
    let swapIndex = Math.floor(Math.random(i + 1));
    [this.nums[i], this.nums[swapIndex]] = [this.nums[swapIndex], this.nums[i]];
  }

  return this.nums;
};

/** 
 * Your Solution object will be instantiated and called as such:
 * var obj = Object.create(Solution).createNew(nums)
 * var param_1 = obj.reset()
 * var param_2 = obj.shuffle()
 */