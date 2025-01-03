import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/animationController.dart';

class Whatidomobile extends StatefulWidget {
  const Whatidomobile({super.key});

  @override
  State<Whatidomobile> createState() => _WhatidomobileState();
}

class _WhatidomobileState extends State<Whatidomobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SansBold("What I do?", 35),
        CardAnimation(
          imagePath: "assets/images/web.jpg",
          text: "Web development",
          width: 300,
        ),
        SizedBox(
          height: 35.0,
        ),
        CardAnimation(
          text: "App development",
          imagePath: "assets/images/app.png",
          fit: BoxFit.contain,
          reverse: true,
          width: 300,
        ),
        SizedBox(
          height: 35.0,
        ),
        CardAnimation(
          text: "Back-end development",
          imagePath: "assets/images/firebase.png",
          width: 300,
        )
      ],
    );
  }
}
