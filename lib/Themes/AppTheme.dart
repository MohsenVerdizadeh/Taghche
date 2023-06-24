import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Color(0xFF3dd9d6)
// Color(0xFF232323)
// Color(0xFF297171)
class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.blueGrey,
    canvasColor: Colors.blueGrey,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF232323),
    canvasColor: Color(0xFF232323),
  );
}
