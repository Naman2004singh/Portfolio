import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class AboutMeWeb extends StatelessWidget {
  final aboutSectionHeight;
  final imageHeight;
  const AboutMeWeb(this.aboutSectionHeight, this.imageHeight, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: aboutSectionHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/web.jpg",
            height: imageHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SansBold("About Me", 40.0),
              SizedBox(
                height: 15,
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
              Row(
                children: [
                  BorderText("Flutter"),
                  SizedBox(
                    width: 10,
                  ),
                  BorderText("firebase"),
                  SizedBox(
                    width: 10,
                  ),
                  BorderText("Android"),
                  SizedBox(
                    width: 10,
                  ),
                  BorderText("iOS"),
                  SizedBox(
                    width: 10,
                  ),
                  BorderText("Windows"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
