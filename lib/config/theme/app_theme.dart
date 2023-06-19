import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.lightBlue,
  Colors.red,
  Colors.green,
  Colors.teal,
  Colors.orange,
  Colors.purpleAccent,
  Colors.deepPurple
];

class AppTheme {
  final int selectedColor;

  const AppTheme({
    this.selectedColor = 0,
  })  : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less then ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: false),
      );
}
