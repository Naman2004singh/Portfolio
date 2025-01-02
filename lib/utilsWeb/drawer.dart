import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';


  urlLauncher(IconData iconData, String navigateUrl) {
    return IconButton(
        onPressed: () async {
          await launchUrl(Uri.parse(navigateUrl));
        },
        icon: FaIcon(
          iconData,
          size: 35,
        ));
  }
  
class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 72,
          backgroundColor: Colors.tealAccent,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/web.png"),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SansBold("Naman Singh", 30),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            urlLauncher(FontAwesomeIcons.instagram,
                "https://www.instagram.com/its_namansingh29/"),
            urlLauncher(FontAwesomeIcons.twitter,
                "https://www.twitter.com/Naman2singh9/"),
            urlLauncher(FontAwesomeIcons.github,
                "https://www.github.com/Naman2004singh/")
          ],
        )
      ],
    );
  }
}
