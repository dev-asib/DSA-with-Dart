void main() {
  Stack<int> stack = Stack<int>();

  try {
    stack.pop();
  } catch (e) {
    print("$e");
  }

  stack.push(10);
  stack.push(20);
  stack.push(30);

  print(stack._stack);

  //View the top element using peek()
  print("Top element = ${stack.peak()}");

  print(stack._stack);

  //Pop elements from the stack
  print("Pop element = ${stack.pop()}");

  print(stack._stack);

  //Check the size of the stack
  print("Stack size = ${stack.size()}");

  //Check if the stack is empty
  print("Is stack empty? = ${stack.isEmpty()}");

  stack.pop();
  stack.pop();
  print("Is stack empty? = ${stack.isEmpty()}");

  try {
    stack.peak();
  } catch (e) {
    print("$e");
  }
}

class Stack<T> {
  List<T> _stack = [];

  void push(T value) {
    _stack.add(value);
  }

  T pop() {
    if (_stack.isEmpty) {
      throw Exception("Stack is empty.");
    }
    return _stack.removeLast();
  }

  T peak() {
    if (_stack.isEmpty) {
      throw Exception("Stack is empty.");
    }
    return _stack.last;
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }

  int size() {
    return _stack.length;
  }
}
