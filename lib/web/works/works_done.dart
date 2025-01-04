import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/animationController.dart';

class WorksDone extends StatelessWidget {
  const WorksDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(
          height: 40.0,
        ),
        SansBold("Works", 50),
        SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CardAnimation(
                width: 300.0,
                imagePath: "images/portfolio.png",
                text: "Portfolio"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("Portfolio", 30.0),
                SizedBox(
                  height: 15.0,
                ),
                Sans(15.0,
                    "Deployed on Android, iOS and web, the portfolio \nproject was truly an achievement. \nI used Flutter to develop the beautiful and \nresponsive UI and firebase for the back-end")
              ],
            )
          ],
        )
      ],
    );
  }
}
