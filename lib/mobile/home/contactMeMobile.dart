import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/buttons.dart';
import 'package:portfolio/utilsWeb/textField.dart';

class Contactmemobile extends StatelessWidget {
  final screeenWidthMobile;
  const Contactmemobile({super.key, required this.screeenWidthMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SansBold("Contact me", 30.0),
        Textfield(
            hintLabel: "First Name",
            hintText: "Please type last name",
            width: screeenWidthMobile / 1.4),
        SizedBox(
          height: 20.0,
        ),
        Textfield(
            hintLabel: "Last Name",
            hintText: "Please type last name",
            width: screeenWidthMobile / 1.4),
        SizedBox(
          height: 20.0,
        ),
        Textfield(
            hintLabel: "Email",
            hintText: "Please type email address",
            width: screeenWidthMobile / 1.4),
        SizedBox(
          height: 20.0,
        ),
        Textfield(
            hintLabel: "Phone number",
            hintText: "Please type phone number",
            width: screeenWidthMobile / 1.4),
        SizedBox(
          height: 20.0,
        ),
        Textfield(
          hintLabel: "Message",
          hintText: "Please type your message",
          width: screeenWidthMobile / 1.4,
          maxlines: 10,
        ),
        SizedBox(
          height: 20.0,
        ),
        Materialbutton(
            buttonHeight: 60.0, minButtonWidth: screeenWidthMobile / 2.2),
      ],
    );
  }
}
