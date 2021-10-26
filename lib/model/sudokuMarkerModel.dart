import 'package:flutter/material.dart';

class SudokuMarkerModel {
  String value;
  bool isSelected;
  Icon icon;
  SudokuMarkerModel({
    this.isSelected = false,
    this.value = '0',
    this.icon,
  });
}
