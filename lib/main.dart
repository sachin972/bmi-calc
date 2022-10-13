import 'package:flutter/material.dart';
import 'input_page.dart';


void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // primaryColor: Color(0xFF0A0E21),
      ),
      home: FullBody(),
    );
  }
}

