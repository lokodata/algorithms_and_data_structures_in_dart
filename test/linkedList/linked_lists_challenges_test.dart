import 'package:dsa_using_dart/linked_lists/linked_list.dart';
import 'package:test/test.dart';

void main() {
  test(
    'Challenges Test for Linked Lists',
    () {
      // Challenge 1: Print in Reverse
      final list1 = LinkedList<int>();
      list1.push(3);
      list1.push(2);
      list1.push(1);

      expect(
        list1.removeLast(),
        equals(3),
      );

      expect(
        list1.removeLast(),
        equals(2),
      );

      expect(
        list1.removeLast(),
        equals(1),
      );

      // Challenge 2: Find the Middle Node
      final list2 = LinkedList<int>();
      list2.push(5);
      list2.push(4);
      list2.push(3);
      list2.push(2);
      list2.push(1);

      final middle = list2.middleNode();

      // Checks if the middle node is found correctly
      expect(
        middle,
        equals(3),
      );

      // Challenge 3: Reverse the List
      final list3 = LinkedList<String>();
      list3.push('a');
      list3.push('b');
      list3.push('c');

      list3.reverse();

      // Checks if the list is reversed correctly
      expect(
        list3.toString(),
        equals('c -> b -> a'),
      );

      // Challenge 4: Remove All Occurrences of an Element
      final list4 = LinkedList<int>();
      list4.push(3);
      list4.push(2);
      list4.push(3);
      list4.push(1);
      list4.push(3);

      list4.removeAllOccurence(3);

      // Checks if the element is removed correctly
      expect(
        list4.toString(),
        equals('1 -> 2'),
      );
    },
  );
}
