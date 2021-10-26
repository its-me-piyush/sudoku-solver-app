import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sudoku_solver/model/sudokuMarkerModel.dart';

class SudokuMarkerProvider with ChangeNotifier {
  List<SudokuMarkerModel> _items =  [
    SudokuMarkerModel(
      value: '1',
    ),
    SudokuMarkerModel(
      value: '2',
    ),
    SudokuMarkerModel(
      value: '3',
    ),
    SudokuMarkerModel(
      value: '4',
    ),
    SudokuMarkerModel(
      value: '5',
    ),
    SudokuMarkerModel(
      value: '6',
    ),
    SudokuMarkerModel(
      value: '7',
    ),
    SudokuMarkerModel(
      value: '8',
    ),
    SudokuMarkerModel(
      value: '9',
    ),
    SudokuMarkerModel(
      value: '0',
      icon: Icon(
        Icons.delete_outline_rounded,
      ),
    )
  ];

  List<SudokuMarkerModel> get items {
    return [..._items];
  }

  SudokuMarkerModel _selectedMarker = SudokuMarkerModel(value: '');

  void selectMarker(int givenIndex) {
    for (var i = 0; i < _items.length; i++) {
      if (_items[i].isSelected == true) {
        _items[i].isSelected = false;
      }
    }
    _items[givenIndex].isSelected = true;
    _selectedMarker = _items[givenIndex];
    notifyListeners();
  }

  SudokuMarkerModel getSelectedMarker() {
    return _selectedMarker;
  }
}
