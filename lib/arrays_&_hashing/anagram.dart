/*
  Given two strings s and t, return true if t is an anagram of s, and false otherwise.

  An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

  Example 1:
  Input: s = "anagram", t = "nagaram"
  Output: true
*/

bool isAnagram(String s, String t) {
  // 1. Check if the length of the strings are the same
  if (s.length != t.length) return false;

  // 2. Sort the strings and check if they are the same
  List<String> sList = s.split('')..sort();
  List<String> tList = t.split('')..sort();

  // 3. Join the sorted strings and check if they are the same
  return sList.join() == tList.join();
}

/*
  Solution
  1. Check if the length of the strings are the same. If not, return false.
  2. Split the strings into a list of characters, sort them, and store them in sList and tList.
  3. Join the sorted strings and check if they are the same. Return true if they are the same, and false if they are not.
*/