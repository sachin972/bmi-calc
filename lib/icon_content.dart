import 'package:flutter/material.dart';
import 'constants.dart';



class IconContent extends StatelessWidget {

  final IconData iconContent;
  final String textContent;

  IconContent({required this.iconContent, required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconContent,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          style: labelStyle,
          ),
      ],
    );
  }
}
