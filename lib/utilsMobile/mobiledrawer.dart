import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsMobile/drawerbutton.dart';
import 'package:portfolio/utilsWeb/drawer.dart';

class Mobiledrawer extends StatefulWidget {
  final screenWidthMobile;
  const Mobiledrawer({super.key, this.screenWidthMobile});

  @override
  State<Mobiledrawer> createState() => _MobiledrawerState();
}

class _MobiledrawerState extends State<Mobiledrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 10),
            child: CircleAvatar(
              radius: 72,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/web.png"),
              ),
            ),
          ),
          // Divider(
          //   indent: 50,
          //   endIndent: 50,
          // ),
          SizedBox(
            height: 10.0,
          ),
          Drawerbutton(
            buttonColor: Colors.black,
            buttonChild: SansBoldColor(
              color: Colors.white,
              text: "Home",
              size: 20,
            ),
            routes: "/",
          ),
          SizedBox(
            height: 20.0,
          ),
          Drawerbutton(
            buttonColor: Colors.black,
            buttonChild: SansBoldColor(
              color: Colors.white,
              text: "Works",
              size: 20,
            ),
            routes: "/work",
          ),
          SizedBox(
            height: 20.0,
          ),
          Drawerbutton(
            buttonColor: Colors.black,
            buttonChild: SansBoldColor(
              color: Colors.white,
              text: "Blog",
              size: 20,
            ),
            routes: "/blog",
          ),
          SizedBox(
            height: 20.0,
          ),
          Drawerbutton(
            buttonColor: Colors.black,
            buttonChild: SansBoldColor(
              color: Colors.white,
              text: "About",
              size: 20,
            ),
            routes: "/about",
          ),
          SizedBox(
            height: 20.0,
          ),
          Drawerbutton(
            buttonColor: Colors.black,
            buttonChild: SansBoldColor(
              color: Colors.white,
              text: "Contact",
              size: 20,
            ),
            routes: "/contact",
          ),
          SizedBox(
            height: 30,
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
      ),
    );
  }
}
