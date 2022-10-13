import 'package:bmi_calculator/someMoew.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';

class CalculationBrain extends StatelessWidget {
  // final String bmi;

  CalculationBrain({required this.bmi,required this.inter,required this.result});

  final String bmi;
  final String result;
  final String inter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: activeCardColor,
        title: Center(child: Text("RESULT"),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Your Result", style: headingStyle,),
          Expanded(
            flex: 5,
            child: UniversalContainer(contColor: inactiveCardColor,
              iconContent: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(result, style: normalStyle,),
                  Text(bmi, style: numberStyle,),
                  Text(inter, style: labelStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(ontap: () { Navigator.pop(context); }, buttonContent: 'Re-Calculate',),
        ],
      ),
    );
  }
}
