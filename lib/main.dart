import 'package:flutter/material.dart';
import 'package:design_practice_1/screens/basic_design.dart';
import 'package:design_practice_1/screens/home_screen.dart';
import 'package:design_practice_1/screens/scroll_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home_screen',
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_screen': (_) => const ScrollScreen(),
          'home_screen': (_) => HomeScreen(),
        });
  }
}
