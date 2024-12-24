import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

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
              CardWidget("Web development", "images/web.jpg"),
              CardWidget("App development", "images/app.png"),
              CardWidget("Back-end development", "images/firebase.png")
            ],
          )
        ],
      ),
    );
  }
}
