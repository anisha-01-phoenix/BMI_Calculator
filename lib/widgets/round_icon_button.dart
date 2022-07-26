import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() doFunction;

  RoundIconButton({required this.icon, required this.doFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: doFunction,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey.shade700,
      child: Icon(icon),
    );
  }
}
