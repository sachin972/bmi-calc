import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  final VoidCallback ontap;
  final String buttonContent;

  BottomButton({required this.ontap, required this.buttonContent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: Colors.pink,
        width: double.infinity,
        height: 40.0,
        child: Center(
          child: Text(buttonContent),
        ),
      ),
    );
  }
}
