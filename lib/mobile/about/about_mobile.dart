import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsMobile/mobiledrawer.dart';
import 'package:portfolio/utilsWeb/animationController.dart';

class AboutMobileScreen extends StatefulWidget {
  const AboutMobileScreen({super.key});

  @override
  State<AboutMobileScreen> createState() => _AboutMobileScreenState();
}

class _AboutMobileScreenState extends State<AboutMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black, size: 35.0),
        ),
        endDrawer: Mobiledrawer(),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          children: const [
            SizedBox(
              height: 90.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.tealAccent,
              radius: 155.0,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 152.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/circleImage.png"),
                  radius: 150,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            SansBold("About Me", 40),
            SizedBox(
              height: 15.0,
            ),
            Sans(15,
                '''Hello I'm Naman Singh I specilized in flutter development"I strive to ensure astounding performance with states ofthe art of security for Android, iOS, Web, Mac, Linux, and Window'''),
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
            ),
            SizedBox(
              height: 60.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("Web development", 20),
                SizedBox(
                  height: 20.0,
                ),
                CardAnimation(
                  imagePath: "assets/images/web.png",
                  text: "Web developmeent",
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
            Sans(15,
                "I am here to build your presence online with state of the art web apps"),
            SizedBox(
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("App development", 20),
                SizedBox(
                  height: 20.0,
                ),
                CardAnimation(
                  imagePath: "assets/images/app.png",
                  text: "App developmeent",
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
            Sans(15,
                "Do you need a high-performance, responsive and beautiful app? Don't worry, I have got you covered"),
            SizedBox(
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("Back-end development", 20),
                SizedBox(
                  height: 20.0,
                ),
                CardAnimation(
                  imagePath: "assets/images/firebase.png",
                  text: "Back-end developmeent",
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
            Sans(15,
                "Do you want your back-end to be highly scalable and secured? Let's have a conversion on how i can help you with that"),
            SizedBox(
              height: 35.0,
            )
          ],
        ),
      ),
    );
  }
}
