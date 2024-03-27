/* 
Valid Parenthesis => https://leetcode.com/problems/valid-parentheses/description/

To determine if a string containing various types of brackets ('(', ')', '{', '}', '[', ']') is valid, you need to follow these rules:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every closing bracket must have a corresponding open bracket of the same type.
*/

import 'package:dsa_using_dart/stacks/stack.dart';

bool isValidParenthesis(String s) {
  final stack = Stack<String>();

  for (int i = 0; i < s.length; i++) {
    // if the character is an open bracket, push it to the stack
    if (s[i] == '(' || s[i] == '{' || s[i] == '[') {
      stack.push(s[i]);
    } else if (s[i] == ')' || s[i] == '}' || s[i] == ']') {
      // check if the stack is empty, return false
      if (stack.isEmpty) return false;

      // check if the top element is the opening bracket of the same type
      if ((s[i] == ')' && stack.peek() == '(') ||
          (s[i] == '}' && stack.peek() == '{') ||
          (s[i] == ']' && stack.peek() == '[')) {
        stack.pop();
      } else {
        // if the top element is not the opening bracket of the same type, return false
        return stack.isEmpty;
      }
    }
  }
  // if the stack is empty, return true
  return stack.isEmpty;
}


/* 
  How this solution works?

  1. it is a fuction that accepts a String s as an argument.
  2. It creates a stack of type String.
  3. It loops through the string s using for loop.
  4. If the character is an open bracket, it pushes it to the stack.
  5. If the character is a closing bracket, it checks if the stack is empty and returns false if it is.
  6. It checks if the top element is the opening bracket of the same type.
  7. If the top element is not the opening bracket of the same type, it returns false.
  8. If the stack is empty, it returns true.

*/