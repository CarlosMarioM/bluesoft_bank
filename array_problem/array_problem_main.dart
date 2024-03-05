void main() {
  final array = [1, 2, 3, 4];
  final ArrayManager manager = ArrayManager(array);

  // ignore: avoid_print
  print(array.map((m) => manager.rightRotation(m)));
}

class ArrayManager {
  final List<int> _array;

  const ArrayManager(this._array);

  List<int> rightRotation(int m) {
    final length = _array.length;

    m = m % length;

    return List<int>.from(
        _array.sublist(length - m)..addAll(_array.sublist(0, length - m)));
  }
}
