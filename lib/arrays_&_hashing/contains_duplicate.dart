/*
  Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

  Example 1:
  Input: nums = [1,2,3,1]
  Output: true
*/

bool containsDuplicate(List<int> nums) {
  // 1: Make it a list if the length is not the same it contains duplicates
  return nums.toSet().length != nums.length;
}

bool containsDuplicate2(List<int> nums) {
  // 2: Use a set to store the values and check if the value is already in the set
  Set<int> set = {};

  for (int n in nums) {
    if (set.contains(n)) return true;
    set.add(n);
  }

  return false;
}

/*
  Solution #1
  1. Make the list nums into a set and check if it's length is the same as the list nums. It will return true if the length is not the same, which means it contains duplicates, and false if the length is the same, which means it does not contain duplicates.

  Solution #2
  1. Create a set to store the values.
  2. Loop through the list nums.
  3. If the set contains the value n of the list nums return true.
  4. Add the value n to the set.
  5. Return false if the loop is done.
*/