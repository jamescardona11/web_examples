import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider(String base) {
    if (int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }
  int _counter = 12;

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    this._counter++;
    notifyListeners();
  }

  int get counter => _counter;
}
