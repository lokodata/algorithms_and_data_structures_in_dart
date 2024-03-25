// creating a node class
class Node<T> {
  // constructor that initializes holds a value and a reference to the next node
  Node({required this.value, this.next});

  // T is any type of value
  T value;

  // reference to the next node is optional null means it is the end of the list
  Node<T>? next;

  // printing all the nodes
  @override
  String toString() {
    // checks if the next node is null then return the value
    if (next == null) return '$value';

    // if the next node is not null then return the value and the next node
    return '$value -> ${next.toString()}';
  }
}

// linked list implementation (Iterable is used to make the linked list iterable)
class LinkedList<E> extends Iterable<E> {
  /* 
    Head and Tail, which refers to the first and last nodes of the list respectively
  */
  Node<E>? head;
  Node<E>? tail;

  // if the head is null then it is empty
  @override
  bool get isEmpty => head == null;

  // printing all the linkedlist
  @override
  String toString() {
    // if the head is null then return empty list
    if (isEmpty) return 'Empty list';

    // if the head is not null then return the head
    return head.toString();
  }

  /// START OF 3 OPERATIONS FOR ADDING A NODE

  /*
    push: Method to add a new node to the front of the list of head.
    This is also known as head-first insertion 
  */
  void push(E value) {
    // create a new node with the value and the next node is the head
    head = Node(value: value, next: head);

    // if the tail is null then the tail is the head
    tail ??= head;
  }

  /*
    append: Method to add a new node to the end of the list or tail.
    This is also known as tail-end insertion
  */
  void append(E value) {
    // if the list is empty then push the value as you’ll need to update both head and tail to the new node
    if (isEmpty) {
      push(value);
      return;
    }

    // creates a new node after the tail that is guaranteed non-null because of the above check
    tail!.next = Node(value: value);

    // updates the tail to the new node created above
    tail = tail!.next;
  }

  /*
    insertAfter: Method to add a new node after a particular node in the list
    which Finds a particular node and inserts a new node after it.
  */
  Node<E>? nodeAt(int index) {
    // reference to the head node
    var currentNode = head;
    // counter to keep track of the current index
    var currentIndex = 0;

    // loop through the nodes until the current node is the index we are looking for
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    // if the list is empty or index is out of bound it will return null
    return currentNode;
  }

  // Method to add a new node after the particular node we found
  Node<E> insertAfter(Node<E> node, E value) {
    // if the node is the tail then append the value
    if (tail == node) {
      append(value);
      return tail!;
    }

    // if the node is not the tail then create a new node with the value and the next node is the node.next
    node.next = Node(value: value, next: node.next);

    // return the next node
    return node.next!;
  }

  /// START OF 3 OPERATIONS FOR REMOVING A NODE

  /*
    pop: Method to remove the first node from the list
  */
  E? pop() {
    // gets the value of the head node
    final value = head?.value;

    // updates the head to the next node
    head = head?.next;

    // if the head is null then the list is empty so the tail is also null
    if (isEmpty) {
      tail = null;
    }

    // returns the value of the head node
    return value;
  }

  /* 
    removeLast: Method to remove the last node from the list

    You can’t chop the tail node off without getting the reference to the node before it. Thus, you’ll have to do an Arduous Traversal.
  */
  E? removeLast() {
    // if the list only has one node then just do a pop
    if (head?.next == null) return pop();

    // make the current node the head
    var current = head;

    // loop through the nodes until the current node is the node before the tail
    while (current!.next != tail) {
      current = current.next;
    }

    // get value of the tail node
    final value = tail?.value;

    // update the tail to the current node
    tail = current;

    // set the next node of the tail to null
    tail!.next = null;

    // return the value of the tail node
    return value;
  }

  /* 
    removeAfter: Method to remove a node after a particular node in the list
  */
  E? removeAfter(Node<E> node) {
    // set value as the next node value
    final value = node.next?.value;

    // if the next node is the tail then update the tail to the current node
    if (node.next == tail) {
      tail = node;
    }

    // update the next node to the next next node
    node.next = node.next?.next;

    // return the value of the next node
    return value;
  }

  /* ------------------------------------------------------------------------------ */

  // Making a LinkedList Iterable
  @override
  Iterator<E> get iterator => _LinkedListIterator(this);

  // Function to find the middle node of a list for Challenge 2
  /* 
    This technique involves using two pointers - one that moves one node at a time (slow pointer) and another that moves two nodes at a time (fast pointer). When the fast pointer reaches the end of the list, the slow pointer will be at the middle of the list.
  */
  E? middleNode() {
    // if the list is empty return null
    if (isEmpty) return null;

    // create a reference Node for slow and fast = head
    Node<E>? slowPointer = head;
    Node<E>? fastPointer = head;

    // loop through the nodes until the fastPointer node is null
    while (fastPointer != null && fastPointer.next != null) {
      // move the slowPointer node to the next node
      slowPointer = slowPointer?.next;

      // move the fastPointer node to the next next node
      fastPointer = fastPointer.next?.next;
    }

    // return the value of the slowPointer node
    return slowPointer?.value;
  }

  // Function to reverse the list for Challenge 3
  LinkedList<E>? reverse() {
    // create a constructor for the reversed list
    LinkedList<E>? reversedList = LinkedList<E>();

    // create a reference Node for current = head
    Node<E>? current = head;

    // if the list is empty then return null
    if (isEmpty) return null;

    // loop through the nodes until the current node is null
    while (current != null) {
      // push the value of the current node to the reversed list
      reversedList.push(current.value);

      // move to the next node
      current = current.next;
    }

    // return the reversed list
    return reversedList;
  }

  // Function to remove all occurence of an element / value from a linked list
  void removeAllOccurence(E value) {
    // if the list is empty then return null
    if (isEmpty) return;

    // create a reference Node for current = head
    Node<E>? current = head;

    // loop through the nodes until the current node is null
    while (current != null) {
      // if current node value is equal to the value then remove the node
      if (current.value == value) {
        pop();
      }

      // if the current next node value is equal to the value then remove the node
      if (current.next?.value == value) {
        removeAfter(current);
      }

      // move to the next node
      current = current.next;
    }
  }
}

// Iterator class to make the linked list iterable
class _LinkedListIterator<E> implements Iterator<E> {
  // constructor that initializes the list
  _LinkedListIterator(LinkedList<E> list) : _list = list;

  // reference to the list
  final LinkedList<E> _list;

  // reference to the current node
  Node<E>? _currentNode;

  // current value of the node
  @override
  E get current => _currentNode!.value;

  // boolean to check if it is the first pass
  bool _firstPass = true;

  // method to move to the next node
  @override
  bool moveNext() {
    // checks if the list is empty then return false
    if (_list.isEmpty) return false;

    // checks if it is the first pass if yes,
    if (_firstPass) {
      // set the current node to the head
      _currentNode = _list.head;

      // set the first pass to false
      _firstPass = false;
    } else {
      // move to the next node
      _currentNode = _currentNode?.next;
    }

    // checks if the current node is null then return false
    return _currentNode != null;
  }
}
