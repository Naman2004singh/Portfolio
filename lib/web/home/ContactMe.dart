import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/textField.dart';
import 'package:logger/logger.dart';

// ignore: must_be_immutable
class Contactme extends StatelessWidget {
  final contactMeHeight;
  final messageWidth;
  Contactme(this.contactMeHeight, this.messageWidth, {super.key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emaliNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  var logger = Logger();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: contactMeHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SansBold("Contact me", 40),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Textfield(
                      hintLabel: "First Name",
                      hintText: "Please type first name",
                      controller: firstNameController,
                      width: 350),
                  Textfield(
                      hintLabel: "Last Name",
                      hintText: "Please type last name",
                      controller: lastNameController,
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
                      controller: emaliNameController,
                      width: 350),
                  Textfield(
                      hintLabel: "Phone number",
                      hintText: "Please type phone number",
                      controller: phoneController,
                      width: 350)
                ],
              )
            ],
          ),
          Textfield(
            hintLabel: "Message",
            hintText: "Please type your message",
            controller: messageController,
            width: messageWidth,
            maxlines: 10,
          ),
          MaterialButton(
            onPressed: () {
              logger.d(firstNameController.text.toString());
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            height: 60,
            minWidth: 160,
            color: Colors.tealAccent,
            child: SansBold("Submit", 20),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
