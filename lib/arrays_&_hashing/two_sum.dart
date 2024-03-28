/*
  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.

  You can return the answer in any order.

  Example 1:
  Input: nums = [2,7,11,15], target = 9
  Output: [0,1]
*/

List<int> twoSum(List<int> nums, int target) {
  // Loop through the list of numbers
  for (int i = 0; i < nums.length; i++) {
    // Loop through the list of numbers starting from the next index of i
    for (int j = i + 1; j < nums.length; j++) {
      // If the sum of the numbers at index i and j is equal to the target return the indices
      if (nums[i] + nums[j] == target) {
        // Return the indices
        return [i, j];
      }
    }
  }

  // Return an empty list if no indices are found
  return [];
}

/*
  Solution
  1. Loop through the list of numbers.
  2. Loop through the list of numbers starting from the next index of i.
  3. If the sum of the numbers at index i and j is equal to the target return the indices.
  4. Return an empty list if no indices are found.
*/