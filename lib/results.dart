import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults, resultText, interpretation;
  ResultsPage(
      {required this.bmiResults,
      required this.resultText,
      required this.interpretation});

  Color colour=Colors.cyanAccent;
  @override
  Widget build(BuildContext context) {
    if(bmiResults=='UNDERWEIGHT')
      colour=Colors.yellowAccent;
    else if (bmiResults=='NORMAL')
      colour=Colors.greenAccent;
    else
      colour=Colors.redAccent;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmiResults,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: colour,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    resultText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 65,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    interpretation,
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              colour: cardColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'RE-CALCULATE',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              margin: EdgeInsets.only(top: 12.0),
              decoration: BoxDecoration(
                color: pinkShade,
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
