import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/web/utils/animationController.dart';

class Whatido extends StatelessWidget {
  final DoHeight;
  const Whatido(this.DoHeight, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DoHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          SansBold("What I do", 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardAnimation(
                imagePath: "images/web.jpg",
                text: "Web development",
              ),
              CardAnimation(
                text: "App development",
                imagePath: "images/app.png",
                fit: BoxFit.contain,
                reverse: true,
              ),
              CardAnimation(
                  text: "Back-end development",
                  imagePath: "images/firebase.png")
            ],
          )
        ],
      ),
    );
  }
}
