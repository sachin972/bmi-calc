import 'package:flutter/material.dart';
import 'someMoew.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'new_page.dart';
import 'bottom_button.dart';

enum Gender {
  male,
  female,
  none,
}

class FullBody extends StatefulWidget {
  const FullBody({Key? key}) : super(key: key);

  @override
  State<FullBody> createState() => _FullBodyState();
}

class _FullBodyState extends State<FullBody> {
  Gender selectedGender = Gender.none;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator"),
        ),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: UniversalContainer(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      contColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      iconContent: IconContent(
                        iconContent: Icons.male,
                        textContent: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: UniversalContainer(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      contColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      iconContent: IconContent(
                        iconContent: Icons.female,
                        textContent: "Female",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: UniversalContainer(
                contColor: activeCardColor,
                iconContent: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: labelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: numberStyle,
                        ),
                        Text(
                          "cm",
                          style: labelStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: UniversalContainer(
                      contColor: activeCardColor,
                      iconContent: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: labelStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Color(0x9F2A2E33),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Color(0x9F2A2E33),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: UniversalContainer(
                      contColor: activeCardColor,
                      iconContent: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: labelStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Color(0x9F2A2E33),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Color(0x9F2A2E33),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButton(
              buttonContent: "Calculate",
              ontap: () {
                BmiCalculation c = BmiCalculation(height: height, weight: weight);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => CalculationBrain(
                      bmi: c.calculateBMI(),
                      inter: c.getConclusion(),
                      result: c.getResult(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

