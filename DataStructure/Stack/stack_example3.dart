void main() {
  Stack stack = Stack();

  stack.push(10);
  stack.push(20);
  stack.push(30);

  print(stack._stack);

  print(stack.peek());

  print(stack.pop());

  print(stack._stack);

  print(stack.pop());
  print(stack.pop());
  print(stack.pop());

  print(stack.peek());
  stack.push(20);
  print(stack.peek());
}

class Stack {
  List<int> _stack = [];

  void push(int value) {
    _stack.add(value);
  }

  int? pop() {
    if (_stack.isEmpty) {
      print("Exception: Stack is empty");
      return null;
    }

    return _stack.removeLast();
  }

  int? peek() {
    if (_stack.isEmpty) {
      print(
          "Exception: You can't peek any value from stack. Because stack is empty.");
      return null;
    }
    return _stack.last;
  }
}
