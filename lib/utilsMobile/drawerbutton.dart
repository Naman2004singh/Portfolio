import 'package:flutter/material.dart';

class Drawerbutton extends StatelessWidget {
  final Widget buttonChild;
  final Color buttonColor;
  final routes;
  const Drawerbutton(
      {super.key,
      required this.buttonChild,
      required this.buttonColor,
      required this.routes});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, routes);
      },
      elevation: 20,
      color: buttonColor,
      height: 50.0,
      minWidth: 200.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Colors.blueGrey.shade800)),
      child: buttonChild,
    );
  }
}
