import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        // print("Entered");
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        // print("Exit");
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(microseconds: 500),
        curve: Curves.elasticOut,
        style: isSelected
            ? GoogleFonts.roboto(
                shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                color: Colors.transparent,
                fontSize: 25.0,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent)
            : GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 23.0,
              ),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:
            GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold));
  }
}

class SansBoldColor extends StatelessWidget {
  final String text;
  final double? size;
  final Color color;
  const SansBoldColor(
      {super.key, required this.color, this.size, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, color: color),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.size, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.openSans(fontSize: size));
  }
}

// Bordered text
class BorderText extends StatelessWidget {
  final textData;
  const BorderText(this.textData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.tealAccent, width: 2)),
      child: Sans(15, textData),
    );
  }
}
