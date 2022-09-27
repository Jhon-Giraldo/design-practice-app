import 'package:design_practice_1/screens/scroll_screen.dart';
import 'package:flutter/material.dart';
import 'package:design_practice_1/screens/basic_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'scroll_screen',
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_screen': (_) => ScrollScreen()
        }
    );
  }
}
