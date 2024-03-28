import 'package:dsa_using_dart/arrays_&_hashing/anagram.dart';
import 'package:test/test.dart';

void main() {
  test('Valid Anagram Test', () {
    // create two strings
    String s = "anagram";
    String t = "nagaram";
    // check if the two strings are anagrams
    expect(isAnagram(s, t), equals(true));

    // repeat
    s = "rat";
    t = "car";
    expect(isAnagram(s, t), equals(false));
  });
}
