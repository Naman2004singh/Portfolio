import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/animationController.dart';

class WorkdoneMobile extends StatelessWidget {
  const WorkdoneMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 30.0,
          ),
          SansBold("Works", 40),
          SizedBox(
            height: 30.0,
          ),
          CardAnimation(
              width: 300.0,
              imagePath: "assets/images/portfolio.png",
              text: "Portfolio"),
          SizedBox(
            height: 20.0,
          ),
          SansBold("Portfolio", 30.0),
          SizedBox(
            height: 15.0,
          ),
          Sans(15.0,
              "Deployed on Android, iOS and web, the portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and firebase for the back-end")
        ]);
  }
}
