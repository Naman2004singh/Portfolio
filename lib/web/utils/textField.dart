import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class Textfield extends StatelessWidget {
  final hintText;
  final hintLabel;
  final width;
  final maxlines;
  const Textfield({super.key, required this.hintLabel, required this.hintText, required this.width,this.maxlines});

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
              maxLines: maxlines,
              decoration: InputDecoration(
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
