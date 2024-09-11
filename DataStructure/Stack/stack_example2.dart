void main() {
  Stack<int> stack = Stack<int>(3);

  try {
    stack.pop();
  } catch (e) {
    print("$e");
  }

  try {
    stack.peek();
  } catch (e) {
    print("$e");
  }

  stack.push(10);
  stack.push(20);
  stack.push(30);
  print(stack._stack);
  try {
    stack.push(40);
  } catch (e) {
    print("$e");
  }

  print(stack.peek());
  
  print(stack.pop());

  print(stack._stack);

  print(stack.peek());
}

class Stack<T> {
  List<T?> _stack;
  int _maxSize;
  int _top;

  Stack(int size)
      : _stack = List<T?>.filled(size, null, growable: false),
        _maxSize = size,
        _top = -1;

  void push(T value) {
    if (_top >= _maxSize - 1) {
      throw Exception("Stack overflow: Cannot push $value, stack is full");
    }
    _top++;
    _stack[_top] = value;
  }

  T pop() {
    if (_top < 0) {
      throw Exception("Stack underflow: Cannot pop, stack is empty");
    }
    T? value = _stack[_top];
    _stack[_top] = null;
    _top--;
    return value!;
  }

  T? peek() {
    if (_top < 0) {
      throw Exception("Stack is empty");
    }
    return _stack[_top];
  }

  bool isEmpty() {
    return _top == -1;
  }

  bool isFull() {
    return _top == _maxSize - 1;
  }

  int size() {
    return _top + 1;
  }
}
