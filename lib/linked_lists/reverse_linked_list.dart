/* 
Reverse Linked List => https://leetcode.com/problems/reverse-linked-list/description/

Given the head of a singly linked list, reverse the list, and return the reversed list.

Ex. 
Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]
*/

// create a Node that has a value and link to the next node
class ListNode {
  int value;
  ListNode? next;
  ListNode(this.value, [this.next]);
}

ListNode? reverseList(ListNode? head) {
  // this holds the previous node
  ListNode? prev;

  // this holds the next node
  ListNode? next;

  // this holds the current node
  ListNode? current = head;

  while (current != null) {
    // store the next node
    next = current.next;

    // reverse the link
    current.next = prev;

    // move the prev node to the current node
    prev = current;

    // move the current node to the next node
    current = next;
  }

  // after the loop, the prev node will be the new head
  return prev;
}

/* 
 How this solution works?

 Ex. [1, 2, 3, 4, 5]

 1. It is a function that accepts a ListNode head as an argument.
 2. It creates three variables prev, next, and current.
    2.1. prev holds the previous node.  prev is currently null.
    2.2. next holds the next node. next is currently null.
    2.3. current holds the current node. current is the head node which is 1.
 3. It loops through the linked list until the current node is null.
    3.1. It stores the next node in the next variable. next is 2.
    3.2. It reverses the link of the current node to the prev node. head node = 1 will now be link to prev node = null whcih means the end of the node
    3.3. It moves the prev node to the current node. prev node = 1.
    3.4. It moves the current node to the next node. current node = 2.
  4. After the loop, the prev node will be the new head. prev node = 5.
  5. It returns the prev node which is the new head. [5, 4, 3, 2, 1]

*/
