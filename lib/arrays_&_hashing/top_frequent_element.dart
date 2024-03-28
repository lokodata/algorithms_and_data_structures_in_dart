/*
  Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

  Example 1:
  Input: nums = [1,1,1,2,2,3], k = 2
  Output: [1,2]
*/

List<int> topKFrequent(List<int> nums, int k) {
  // create a map to store the frequency of the elements
  Map<int, int> frequentElements = {};

  // for each number in the list nums
  for (int element in nums) {
    // check if the element is in the map if not add it or increment the count
    frequentElements[element] = (frequentElements[element] ?? 0) + 1;
  }

  // sort the list of nums based on the frequency of the elements
  nums.sort((a, b) => frequentElements[b]!.compareTo(frequentElements[a]!));

  // make nums a set to remove duplicates
  Set<int> uniqueNums = nums.toSet();

  // return the first k elements
  return uniqueNums.take(k).toList();
}

/*
  Solution:
  1. Create a map to store the frequency of the elements
  2. For each number in the list nums
  3. Check if the element is in the map if not add it or increment the count
  4. Sort the list of nums based on the frequency of the elements
  5. Make nums a set to remove duplicates
  6. Return the first k elements
*/
