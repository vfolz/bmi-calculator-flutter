import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        accentColor: Color(0xFFFCEE09),
        scaffoldBackgroundColor: Color(0xFF263747),
      ),
      home: InputPage(),
    );
  }
}


