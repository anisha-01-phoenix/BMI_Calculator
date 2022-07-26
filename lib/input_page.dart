import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableCard(Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
            Expanded(child: ReusableCard(Color(0xFF1D1E33))),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableCard(Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {

  final Color colour;
  ReusableCard(this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
