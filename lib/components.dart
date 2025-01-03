import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  final route;
  const TabsWeb(this.title, {super.key, required this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, widget.route),
      child: MouseRegion(
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
          duration: Duration(microseconds: 5000),
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
  final double hPadding;
  final double vPadding;
  const BorderText(this.textData,
      {super.key, required this.hPadding, required this.vPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.tealAccent, width: 2)),
      child: Sans(15, textData),
    );
  }
}
