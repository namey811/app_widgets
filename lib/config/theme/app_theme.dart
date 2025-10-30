
import 'package:flutter/material.dart';

const colorList = <Color>[

  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor=0
    }):assert( selectedColor >= 0, 'debe seleccionar un color mayor o igual a 0'),
      assert( selectedColor < colorList.length -1, 'debe seleccionar un color menor que ${colorList.length}');

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
        elevation: 0,
      ),
    );
  }

} 