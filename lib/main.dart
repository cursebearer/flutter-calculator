import 'package:flutter/material.dart';
import 'package:first_project/src/calc_page.dart';

// GridView: https://api.flutter.dev/flutter/widgets/GridView-class.html
// function_tree https://pub.dev/packages/function_tree

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
