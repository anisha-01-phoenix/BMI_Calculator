import 'package:flutter/cupertino.dart';

import '../input_page.dart';

class CardWidget extends StatelessWidget {
  final IconData cardIcon;
  final String displayText;
  CardWidget({required this.cardIcon, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 50.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          displayText,
          style: TextStyle(
            fontSize: 18.0,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
