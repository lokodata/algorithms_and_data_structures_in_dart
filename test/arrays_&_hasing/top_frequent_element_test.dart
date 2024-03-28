import 'package:dsa_using_dart/arrays_&_hashing/top_frequent_element.dart';
import 'package:test/test.dart';

void main() {
  test(
    'Top Frequent Element Test',
    () {
      // create a list of integers
      List<int> nums = [1, 1, 1, 2, 2, 3];

      // create a k most frequent element
      int k = 2;

      // check if the list contains the k most frequent element
      expect(topKFrequent(nums, k), equals([1, 2]));

      // repeat
      nums = [1];
      k = 1;
      expect(topKFrequent(nums, k), equals([1]));
    },
  );
}
