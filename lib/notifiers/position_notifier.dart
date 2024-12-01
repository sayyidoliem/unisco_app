import 'package:flutter/cupertino.dart';

class PositionNotifier extends ChangeNotifier {
  int _currentPosition = 0;

  int get currentPosition => _currentPosition;
  set currentPosition(int newValue) {
    _currentPosition = newValue;
    notifyListeners();
  }
}
