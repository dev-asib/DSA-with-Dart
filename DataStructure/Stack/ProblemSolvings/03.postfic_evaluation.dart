import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<int> stack = [];

  String operators = "+-*/%";

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (operators.contains(char) == false) {
      stack.add(int.parse(char));
    } else {
      if (stack.length >= 2) {
        int operand2 = stack.removeLast();
        int operand1 = stack.removeLast();
        int result = 0;
        switch (char) {
          case '*':
            result = operand1 * operand2;
            break;
          case '/':
            result = operand1 ~/ operand2;
            break;
          case '+':
            result = operand1 + operand2;
            break;
          case '-':
            result = operand1 - operand2;
            break;
          case '%':
            result = operand1 % operand2;
            break;
        }
        stack.add(result);
      }
    }
  }

  print(stack[0]);
}
