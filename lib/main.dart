import 'package:flutter/material.dart';
import 'package:first_project/src/calc_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,  
      darkTheme: ThemeData.dark(),
      home: const CalcPage(),
    );
  }
}
