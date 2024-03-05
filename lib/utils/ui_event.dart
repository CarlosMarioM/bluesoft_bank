class UiEvent<T> {
  final T _data;

  var _isConsume = false;

  UiEvent(this._data) {
    _isConsume = false;
  }

  static UiEvent<Nothing> get nothing => UiEvent(Nothing());

  T? consume() {
    if (_isConsume) return null;

    _isConsume = true;
    return _data;
  }

  T peek() {
    return _data;
  }
}

class Nothing {}
