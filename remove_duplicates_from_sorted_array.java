class remove_duplicates_from_sorted_array {
  public int removeDuplicates(int[] nums) {
    int length = 0;
    int curr = 0;

    for (int i = 0; i < nums.length; i++) {
      if (i == 0 || nums[i] != nums[i - 1]) {
        length++;
        nums[curr] = nums[i];
        curr++;
      }
    }

    return length;
  }
}