import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  if (areBracketBalanced(input)) {
    print("Brackets are balanced.");
  } else {
    print("Brackets are not balanced.");
  }
}

bool areBracketBalanced(String s) {
  List<String> stack = [];

  Map<String, String> matchBrackets = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    if (char == '(' || char == '{' || char == '[') {
      stack.add(char);
    } else if (char == ')' || char == '}' || char == ']') {
      if (stack.isEmpty || stack.removeLast() != matchBrackets[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
