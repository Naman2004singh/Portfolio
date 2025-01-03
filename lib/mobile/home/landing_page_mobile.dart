import 'package:flutter/material.dart';
import 'package:portfolio/mobile/home/aboutMobile.dart';
import 'package:portfolio/mobile/home/contactMeMobile.dart';
import 'package:portfolio/mobile/home/landingmobile.dart';
import 'package:portfolio/mobile/home/whatIdoMobile.dart';
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
        children: [
          //Intro Section
          Landingmobile(),
          SizedBox(
            height: 90.0,
          ),
          //About section
          Aboutmobile(),
          SizedBox(
            height: 60.0,
          ),
          //What I do?
          Whatidomobile(),
          SizedBox(height: 60.0),
          //Contact Section
          Contactmemobile(
            screeenWidthMobile: deviceWidthMobile,
          ),
          SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}
