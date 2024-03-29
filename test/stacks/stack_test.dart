import 'package:dsa_using_dart/stacks/stack.dart';
import 'package:test/test.dart';

void main() {
  test('Testing the Stack', () {
    // create a stack
    final stack = Stack<int>();

    // push elements to the stack
    stack.push(1);
    stack.push(2);
    stack.push(3);

    // check if the top element is really 3
    expect(stack.peek(), 3);

    // pop the top element
    expect(stack.pop(), equals(3));
    expect(stack.pop(), equals(2));

    // check if the stack is empty should be false
    expect(stack.isEmpty, equals(false));

    // pop the last element
    expect(stack.pop(), equals(1));

    // check if the stack is empty should be true
    expect(stack.isEmpty, equals(true));

    const list = ['S', 'M', 'O', 'K', 'E'];

    // create a stack from a list
    final smokeStack = Stack.of(list);

    // check if the top element is really 'E'
    expect(smokeStack.peek(), equals('E'));

    /* STACK CHALLENGES #1 - Reverse a List Using Stack */

    expect(() {
      print(smokeStack);
    }, prints(matches(r'--- Top ---\nE\nK\nO\nM\nS\n-----------\n')));
  });
}
