import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class CardAnimation extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final width;
  final height;
  const CardAnimation(
      {super.key,
      this.fit,
      required this.imagePath,
      required this.text,
      this.reverse, this.width, this.height});

  @override
  State<CardAnimation> createState() => _CardAnimationState();
}

class _CardAnimationState extends State<CardAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 4))
        ..repeat(reverse: true);
  //to create animation
  late final Animation<Offset> _animation = Tween(
          begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
          end: widget.reverse == true ? Offset.zero : Offset(0, 0.08))
      .animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        //color: Colors.white,
        elevation: 30.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.tealAccent)),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height ?? 200,
                width: widget.width ?? 200,
                fit: widget.fit == null ? null : BoxFit.contain,
              ),
              SizedBox(
                height: 10,
              ),
              SansBold(widget.text, 15)
            ],
          ),
        ),
      ),
    );
  }
}
