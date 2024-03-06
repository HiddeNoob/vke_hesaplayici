import 'package:flutter/material.dart';
import 'input_page.dart';
// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFFFA0E21),

      appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1d2042),centerTitle: true),
      scaffoldBackgroundColor: Color(0xFF0A0E21)
    ),
    home: InputPage(),
    ),
  );
}
