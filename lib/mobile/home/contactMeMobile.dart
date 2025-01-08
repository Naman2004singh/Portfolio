import 'package:flutter/material.dart';
import 'package:portfolio/add_data_to_fire.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/buttons.dart';
import 'package:portfolio/utilsWeb/textField.dart';
import 'package:logger/logger.dart';

class Contactmemobile extends StatelessWidget {
  final screeenWidthMobile;
  Contactmemobile({super.key, required this.screeenWidthMobile});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emaliNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  var logger = Logger();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SansBold("Contact me", 30.0),
          Textfield(
              hintLabel: "First Name",
              hintText: "Please type last name",
              controller: firstNameController,
              validators: (text) {
                if (text.toString().isEmpty) {
                  return "First name is requried";
                }
              },
              width: screeenWidthMobile / 1.4),
          SizedBox(
            height: 20.0,
          ),
          Textfield(
              hintLabel: "Last Name",
              hintText: "Please type last name",
              controller: lastNameController,
              width: screeenWidthMobile / 1.4),
          SizedBox(
            height: 20.0,
          ),
          Textfield(
              hintLabel: "Email",
              hintText: "Please type email address",
              validators: (text) {
                if (RegExp("\\bnaman\\b", caseSensitive: false)
                    .hasMatch(text.toString())) {
                  return "Match found";
                }
              },
              controller: emaliNameController,
              width: screeenWidthMobile / 1.4),
          SizedBox(
            height: 20.0,
          ),
          Textfield(
              hintLabel: "Phone number",
              hintText: "Please type phone number",
              controller: phoneController,
              validators: (text) {
                if (text.toString().isEmpty) {
                  return "Phone number is requried";
                }
              },
              width: screeenWidthMobile / 1.4),
          SizedBox(
            height: 20.0,
          ),
          Textfield(
            hintLabel: "Message",
            hintText: "Please type your message",
            validators: (text) {
              if (text.toString().isEmpty) {
                return "Message is requried";
              }
            },
            controller: messageController,
            width: screeenWidthMobile / 1.4,
            maxlines: 10,
          ),
          SizedBox(
            height: 20.0,
          ),
          MaterialButton(
            onPressed: () async {
              logger.d(firstNameController.text.toString());
              final addData = AddDataToFire();
              if (formKey.currentState!.validate()) {
                await addData.addResponse(
                    firstNameController.text,
                    lastNameController.text,
                    emaliNameController.text,
                    phoneController.text,
                    messageController.text);
                formKey.currentState!.reset();
                dialogError(context);
              }
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            height: 60,
            minWidth: screeenWidthMobile / 2.2,
            color: Colors.tealAccent,
            child: Center(child: SansBold("Submit", 20)),
          ),
        ],
      ),
    );
  }
}
