import 'package:dsa_using_dart/stacks/valid_parenthesis.dart';
import 'package:test/test.dart';

void main() {
  test('Testing the Valid Parenthesis Solution', () {
    // input is '()' should return true
    expect(isValidParenthesis('()'), equals(true));

    // input is '()[]{}' should return true
    expect(isValidParenthesis('()[]{}'), equals(true));

    // input is '(]' should return false
    expect(isValidParenthesis('(]'), equals(false));

    // input is ']' should return false
    expect(isValidParenthesis(']'), equals(false));
  });
}
