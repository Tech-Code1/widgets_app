import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.yellow,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
  Colors.lime,
  Colors.amber,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey
];

class AppTheme {

  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false
  }) : assert(
    selectedColor >= 0, 'Selected color must be greater than 0'
   ),
   assert( 
    selectedColor < colorList.length, 'Selected color must be less or equal ${colorList.length - 1}' 
  );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    ),
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
  );

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode
  }) {
    return AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkMode: isDarkMode ?? this.isDarkMode
    );
  }
}