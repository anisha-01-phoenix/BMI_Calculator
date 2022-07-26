import 'package:bmi_calculator/widgets/card_widget.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'enum/gender.dart';

const bottomContainerHeight = 70.0;
const cardColor = Color(0xFF1D1E33);
const textColor=Color(0xFF8D8E98);
const inactiveCardColor=Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor=inactiveCardColor;
  Color femaleCardColor=inactiveCardColor;

  void updateColor(Gender gender)
  {
    maleCardColor=(gender==Gender.MALE && maleCardColor==inactiveCardColor)?cardColor:inactiveCardColor;
    femaleCardColor=(gender==Gender.FEMALE && femaleCardColor==inactiveCardColor)?cardColor:inactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A0E21),
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                          setState(() {
                            updateColor(Gender.MALE);
                          });
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: CardWidget(
                          cardIcon: FontAwesomeIcons.mars,
                          displayText: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.FEMALE);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: CardWidget(
                          cardIcon: FontAwesomeIcons.venus,
                          displayText: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: cardColor,
                cardChild: Container(),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: cardColor,
                      cardChild: Container(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: cardColor,
                      cardChild: Container(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                color: Color(0xFFEB1555),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
