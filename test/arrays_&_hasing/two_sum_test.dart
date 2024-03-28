import 'package:dsa_using_dart/arrays_&_hashing/two_sum.dart';
import 'package:test/test.dart';

void main() {
  test('Two Sum Test', () {
    // create a list of integers
    List<int> nums = [2, 7, 11, 15];
    // create a target integer
    int target = 9;

    // check if the list contains two numbers that add up to the target
    expect(twoSum(nums, target), equals([0, 1]));

    // repeat
    nums = [3, 2, 4];
    target = 6;
    expect(twoSum(nums, target), equals([1, 2]));

    nums = [3, 3];
    target = 6;
    expect(twoSum(nums, target), equals([0, 1]));
  });
}
