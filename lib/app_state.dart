import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _rangeLinePlaceholder = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23
  ];
  List<int> get rangeLinePlaceholder => _rangeLinePlaceholder;
  set rangeLinePlaceholder(List<int> value) {
    _rangeLinePlaceholder = value;
  }

  void addToRangeLinePlaceholder(int value) {
    rangeLinePlaceholder.add(value);
  }

  void removeFromRangeLinePlaceholder(int value) {
    rangeLinePlaceholder.remove(value);
  }

  void removeAtIndexFromRangeLinePlaceholder(int index) {
    rangeLinePlaceholder.removeAt(index);
  }

  void updateRangeLinePlaceholderAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    rangeLinePlaceholder[index] = updateFn(_rangeLinePlaceholder[index]);
  }

  void insertAtIndexInRangeLinePlaceholder(int index, int value) {
    rangeLinePlaceholder.insert(index, value);
  }
}
