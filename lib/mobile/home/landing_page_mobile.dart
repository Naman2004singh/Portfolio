import 'package:flutter/material.dart';
import 'package:portfolio/mobile/home/landingmobile.dart';
import 'package:portfolio/utilsMobile/mobiledrawer.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var deviceWidthMobile = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: Mobiledrawer(
        screenWidthMobile: deviceWidthMobile,
      ),
      body: ListView(
        children: const [Landingmobile()],
      ),
    );
  }
}
