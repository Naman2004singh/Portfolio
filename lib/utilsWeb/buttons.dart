import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class Materialbutton extends StatelessWidget {
  final double buttonHeight;
  final double minButtonWidth;
  final getMessagedata;
  Materialbutton(
      {super.key,
      required this.buttonHeight,
      required this.minButtonWidth,
      this.getMessagedata});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        //logger.d(getMessagedata);
        print("MEssage is:$getMessagedata");
      },
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      height: buttonHeight,
      minWidth: minButtonWidth,
      color: Colors.tealAccent,
      child: SansBold("Submit", 20),
    );
  }
}
