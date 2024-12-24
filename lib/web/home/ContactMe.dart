import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/web/utils/buttons.dart';
import 'package:portfolio/web/utils/textField.dart';

class Contactme extends StatelessWidget {
  final contactMeHeight;
  final messageWidth;
  const Contactme(this.contactMeHeight, this.messageWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: contactMeHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SansBold("Contact me", 40),
          Column(
            children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Textfield(
                      hintLabel: "First Name",
                      hintText: "Please type first name",
                      width: 350),
                  Textfield(
                      hintLabel: "Last Name",
                      hintText: "Please type last name",
                      width: 350)
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Textfield(
                      hintLabel: "Email",
                      hintText: "Please type email address",
                      width: 350),
                  Textfield(
                      hintLabel: "Phone number",
                      hintText: "Please type phone number",
                      width: 350)
                ],
              )
            ],
          ),
          Textfield(
            hintLabel: "Message",
            hintText: "Please type your message",
            width: messageWidth,
            maxlines: 10,
          ),
          Materialbutton(buttonHeight: 60.0, minButtonWidth: 200.0),
          SizedBox(height: 20.0,)
        ],
      ),
    );
  }
}
