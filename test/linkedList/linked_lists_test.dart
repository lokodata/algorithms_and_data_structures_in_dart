import 'package:dsa_using_dart/linked_lists/linked_list.dart';
import 'package:test/test.dart';

void main() {
  test(
    'Testing the Linked Lists',
    () {
      // Create a linked list using the nodes
      final node1 = Node(value: 'a');
      final node2 = Node(value: 'b');
      final node3 = Node(value: 'c');

      // Link the nodes
      node1.next = node2;
      node2.next = node3;

      // Check if the linked list is created correctly
      expect(
        node1.toString(),
        equals('a -> b -> c'),
      );

      // Create a linked list using the LinkedList class
      final list1 = LinkedList<int>();
      list1.push(3);
      list1.push(2);
      list1.push(1);

      // Check if the linked list is created correctly
      expect(
        list1.toString(),
        equals('1 -> 2 -> 3'),
      );

      // Append elements to the linked list

      list1.append(4);
      list1.append(5);
      list1.append(6);

      // Check if the linked list is appended correctly
      expect(
        list1.toString(),
        equals('1 -> 2 -> 3 -> 4 -> 5 -> 6'),
      );

      // add a node after the middle node
      final middleNode = list1.nodeAt(2)!;
      list1.insertAfter(middleNode, 777);

      // Check if the node is added after the middle node
      expect(
        list1.toString(),
        equals('1 -> 2 -> 3 -> 777 -> 4 -> 5 -> 6'),
      );

      // Create a linked list using the LinkedList class
      final list2 = LinkedList<int>();
      list2.push(3);
      list2.push(2);
      list2.push(1);

      final poppedValue = list2.pop();

      // Check if the linked list is popped correctly
      expect(
        list2.toString(),
        equals('2 -> 3'),
      );

      // Check if the popped value is correct
      expect(
        poppedValue,
        equals(1),
      );

      list2.append(4);
      list2.append(5);

      final removedValue = list2.removeLast();

      // Check if the linked list is removed correctly
      expect(
        list2.toString(),
        equals('2 -> 3 -> 4'),
      );

      // Check if the removed value is correct
      expect(
        removedValue,
        equals(5),
      );

      final firstNode = list2.nodeAt(0)!;
      final removedAfterValue = list2.removeAfter(firstNode);

      // Check if the linked list is removed after the first node
      expect(
        list2.toString(),
        equals('2 -> 4'),
      );

      // Check if the removed after value is correct
      expect(
        removedAfterValue,
        equals(3),
      );

      // Create an linkedlist for iteration
      final list3 = LinkedList<int>();
      list3.push(10);
      list3.push(9);
      list3.push(8);

      // Check if the linked list is iterable
      expect(
        list3,
        containsAllInOrder([8, 9, 10]),
      );
    },
  );
}
