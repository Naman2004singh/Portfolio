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
                imagePath: "assets/images/web.jpg",
                text: "Web development",
              ),
              CardAnimation(
                text: "App development",
                imagePath: "assets/images/app.png",
                fit: BoxFit.contain,
                reverse: true,
              ),
              CardAnimation(
                  text: "Back-end development",
                  imagePath: "assets/images/firebase.png")
            ],
          )
        ],
      ),
    );
  }
}
