import 'package:dsa_using_dart/linked_lists/reverse_linked_list.dart';
import 'package:test/test.dart';

void main() {
  test(
    'Challenges Test for Reverse Linked Lists',
    () {
      // create a list of integers
      ListNode head =
          ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));

      // reverse the linked list
      final reversedHead = reverseList(head);

      // check if the linked list is reversed correctly
      expect(
        reversedHead.toString(),
        equals('5 -> 4 -> 3 -> 2 -> 1'),
      );

      // repeat
      head = ListNode(1, ListNode(2));
      final reversedHead2 = reverseList(head);
      expect(
        reversedHead2.toString(),
        equals('2 -> 1'),
      );

      head = ListNode(1);
      final reversedHead3 = reverseList(head);
      expect(
        reversedHead3.toString(),
        equals('1'),
      );
    },
  );
}
