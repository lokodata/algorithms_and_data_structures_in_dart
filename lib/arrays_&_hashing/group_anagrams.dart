/*
  Given an array of strings strs, group the anagrams together. You can return the answer in any order.

  An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

  Example 1:
  Input: strs = ["eat","tea","tan","ate","nat","bat"]
  Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
*/

List<List<String>> groupAnagrams1(List<String> strs) {
  // 1. Create a map to store the sorted string as key and the list of strings as value
  Map<String, List<String>> map = {};

  // 2. Loop through the list of strings
  for (String string in strs) {
    // 3. Sort the string
    String sortedString = String.fromCharCodes(string.runes.toList()..sort());

    // 4. If the sorted string is not in the map, add it with an empty list
    if (!map.containsKey(sortedString)) {
      // 5. Add the sorted string as key and the string as value
      map[sortedString] = [];
    }

    // 6. Add the string to the list of strings
    map[sortedString]!.add(string);
  }

  // 7. Return the values of the map
  return map.values.toList();
}

/*
  Solution:
  1. Create a map to store the sorted string as key and the list of strings as value
  2. Loop through the list of strings
  3. Sort the string
  4. If the sorted string is not in the map, add it with an empty list
  5. Add the sorted string as key and the string as value
  6. Add the string to the list of strings
  7. Return the values of the map
*/
