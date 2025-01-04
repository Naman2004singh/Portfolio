import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/animationController.dart';
import 'package:portfolio/utilsWeb/appBar.dart';
import 'package:portfolio/utilsWeb/drawer.dart';

class AboutWebScreen extends StatefulWidget {
  const AboutWebScreen({super.key});

  @override
  State<AboutWebScreen> createState() => _AboutWebScreenState();
}

class _AboutWebScreenState extends State<AboutWebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Appbar(),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerMenu(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 150.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    direction: Axis.vertical,
                    children: [
                      SansBold("About Me", 40),
                      SizedBox(
                        height: 15.0,
                      ),
                      Sans(15,
                          "Hello I'm Naman Singh I specilized in flutter development"),
                      Sans(15,
                          "I strive to ensure astounding performance with states of"),
                      Sans(15,
                          "the art of security for Android, iOS, Web, Mac, Linux, and Window"),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          BorderText(
                            "Flutter",
                            hPadding: 8,
                            vPadding: 6,
                          ),
                          BorderText(
                            "firebase",
                            hPadding: 8,
                            vPadding: 6,
                          ),
                          BorderText(
                            "Android",
                            hPadding: 8,
                            vPadding: 6,
                          ),
                          BorderText(
                            "iOS",
                            hPadding: 8,
                            vPadding: 6,
                          ),
                          BorderText(
                            "Windows",
                            hPadding: 8,
                            vPadding: 6,
                          ),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.tealAccent,
                    radius: 155.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 152.0,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/circleImage.png"),
                        radius: 150,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardAnimation(
                    width: 250.0,
                    imagePath: "assets/images/web.jpg",
                    text: "Web development"),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    SansBold("Web development", 32),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(15, "I am here to build your presence online"),
                    Sans(15, "with state of the art web apps")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    SansBold("App development", 32),
                    SizedBox(height: 15.0),
                    Sans(15, "Do you need a high-performance,"),
                    Sans(15, "responsive and beautiful app? Don't"),
                    Sans(15, "worry, I have got you covered")
                  ],
                ),
                CardAnimation(
                  imagePath: "assets/images/app.png",
                  text: "App development",
                  width: 250,
                  reverse: true,
                )
              ],
            ),
            SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardAnimation(
                    width: 250.0,
                    imagePath: "assets/images/firebase.png",
                    text: "Web development"),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    SansBold("Back-end \ndevelopment", 32),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(15, "Do you want yur back-end to be highly"),
                    Sans(15, "scalable and secure? Let's have a"),
                    Sans(15, "conversation on how i can help you with \nthat"),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 35.0,
            )
          ],
        ),
      ),
    );
  }
}
