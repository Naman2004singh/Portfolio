import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class Textfield extends StatelessWidget {
  final hintText;
  final hintLabel;
  final width;
  final maxlines;
  final controller;
  final validators;
  const Textfield(
      {super.key,
      required this.hintLabel,
      required this.hintText,
      required this.width,
      this.maxlines,
      this.controller,
      this.validators});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(16.0, hintLabel),
        SizedBox(
          height: 5,
        ),
        SizedBox(
            width: width,
            child: TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-z A-Z0-9@.]')),
                LengthLimitingTextInputFormatter(50)
              ],
              controller: controller,
              validator: validators,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLines: maxlines,
              decoration: InputDecoration(
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.red)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal, width: 1),
                      borderRadius: BorderRadius.circular(10.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          BorderSide(color: Colors.tealAccent, width: 2)),
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(fontSize: 14)),
            )),
      ],
    );
  }
}
