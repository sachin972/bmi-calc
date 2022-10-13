import 'package:flutter/material.dart';

class UniversalContainer extends StatelessWidget {
  final Color contColor;
  final iconContent;
  final onPress;
  // final Widget reqIcon;

  UniversalContainer({required this.contColor, this.iconContent, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: iconContent,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: contColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}


class BmiCalculation{
  double _bmi = 0.0;
  final int height;
  final int weight;
  BmiCalculation({required this.height,required this.weight});

  String calculateBMI(){
    _bmi = (weight / (height * height))*10000.0;

    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi > 25) return "OverWeight";
    else if(_bmi >18.5) return "Normal";
    else return "UnderWeight";
  }

  String getConclusion(){
    if(_bmi > 25) return "Common man! Start to eat a little healthy and lesser too";
    else if(_bmi > 18.5) return "Well it seems you are on a perfect index but don't be too happy with that";
    else return "Brother, go get start to eat something otherwise you will just get vanished from the planet";
  }
}