// stack implementation of anytype
class Stack<E> {
  // constructor that initializes a private storage with an empty list
  Stack() : _storage = <E>[];

  // private variable to hold the stack elements
  final List<E> _storage;

  @override
  String toString() {
    // return the stack elements in a string in descending order
    return '''--- Top ---\n${_storage.reversed.join('\n')}\n-----------''';
  }

  /*
    Method to push an element to the stack
    Push: Adds an element to the top of the stack.
  */
  void push(E element) => _storage.add(element);

  /* 
    Used an arrow function but it is the same like:
      void push(E element) {
        _storage.add(element);
      }
  */

  /* 
    Method to pop an element from the stack
    Pop: Removes an element from the top of the stack.
  */
  E pop() => _storage.removeLast();

  /// Nice to have operations

  // Method to peek at the top element of the stack
  E peek() => _storage.last;

  // Method to check if the stack is empty
  bool get isEmpty => _storage.isEmpty;

  /* ------------------------------------------------------------------------------ */

  // constructor that initializes an iterable elements to the stack
  Stack.of(Iterable<E> elements) : _storage = List<E>.from(elements);
}
