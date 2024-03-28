import 'package:test/test.dart';
import 'package:dsa_using_dart/arrays_&_hashing/group_anagrams.dart';

void main() {
  test('Group Anagrams Test', () {
    // create a list of strings
    List<String> strs = ["eat", "tea", "tan", "ate", "nat", "bat"];

    // group the anagrams together
    expect(
        groupAnagrams1(strs),
        equals([
          ["eat", "tea", "ate"],
          ["tan", "nat"],
          ["bat"]
        ]));

    // repeat
    strs = [""];
    expect(
        groupAnagrams1(strs),
        equals([
          [""]
        ]));

    strs = ["a"];
    expect(
        groupAnagrams1(strs),
        equals([
          ["a"]
        ]));
  });
}
