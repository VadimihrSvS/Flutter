import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'video_player_screen.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF090C22),
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22)
      ),
      home: InputPage(),
    );
  }
}

