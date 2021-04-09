class TestController {
  TestController({required this.length})
      : _values = List<int>.filled(length, 42);

  final int length;
  final List<int> _values;

  List<int> get values => _values;
  void setValueForIndex(int index, int value) {
    if (index>=0 && index<length) {
      _values[index] = value;
    }
  }
}

