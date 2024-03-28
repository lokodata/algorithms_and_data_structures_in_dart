import 'package:dsa_using_dart/arrays_&_hashing/contains_duplicate.dart';
import 'package:test/test.dart';

void main() {
  test('Contains Duplicate Test', () {
    // creae a list of integers
    List<int> nums = [1, 2, 3, 1];
    // check if the list contains duplicates
    expect(containsDuplicate(nums), equals(true));

    // repeat
    nums = [1, 2, 3, 4];
    expect(containsDuplicate(nums), equals(false));

    nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
    expect(containsDuplicate(nums), equals(true));
  });
}
