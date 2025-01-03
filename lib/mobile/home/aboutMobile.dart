import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class Aboutmobile extends StatelessWidget {
  const Aboutmobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SansBold("About Me", 35),
          SizedBox(
            height: 15,
          ),
          Sans(15, "Hello I'm Naman Singh I specilized in flutter development"),
          Sans(15, "I strive to ensure astounding performance with states of"),
          Sans(15,
              "the art of security for Android, iOS, Web, Mac, Linux, and Window"),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 7.0,
            runSpacing: 7.0,
            children: [
              BorderText(
                "Flutter",
                hPadding: 9,
                vPadding: 7,
              ),
              SizedBox(
                height: 10.0,
              ),
              BorderText(
                "Firebase",
                hPadding: 9,
                vPadding: 7,
              ),
              SizedBox(
                height: 10.0,
              ),
              BorderText(
                "Android",
                hPadding: 9,
                vPadding: 7,
              ),
              SizedBox(
                height: 10.0,
              ),
              BorderText(
                "iOS",
                hPadding: 9,
                vPadding: 7,
              ),
              SizedBox(
                height: 10.0,
              ),
              BorderText(
                "Windows",
                hPadding: 9,
                vPadding: 7,
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
