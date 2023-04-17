import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color.fromARGB(255, 0, 86, 46);
  static const Color accentColor = Colors.greenAccent;
  static const Color grey = Color.fromARGB(255, 104, 104, 104);
  static const Color white = Colors.white;
  static const Color white54 = Colors.white54;
  static const Color pink = Color.fromARGB(134, 252, 0, 0);

  static const TextStyle title1 = TextStyle(
    fontSize: 24,
    color: AppTheme.primaryColor,
  );
  static const TextStyle title2 = TextStyle(color: AppTheme.white);

  static const TextStyle description2 = TextStyle(color: AppTheme.grey);

  static const TextStyle category = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: AppTheme.grey);
  static const TextStyle category2 = TextStyle(color: AppTheme.white54);

  static const TextStyle description1 =
      TextStyle(fontSize: 15, fontStyle: FontStyle.italic);
  static const TextStyle price = TextStyle(
      fontSize: 20, fontStyle: FontStyle.italic, color: AppTheme.pink);
}
