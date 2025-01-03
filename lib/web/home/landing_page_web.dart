import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/utilsWeb/drawer.dart';
import 'package:portfolio/web/home/about_me_web.dart';
import 'package:portfolio/web/home/contactMe.dart';
import 'package:portfolio/web/home/whatIDo.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Spacer(
              flex: 2,
            ),
            TabsWeb(
              "Home",
              route: "/",
            ),
            Spacer(),
            TabsWeb(
              "Works",
              route: "/work",
            ),
            Spacer(),
            TabsWeb(
              "Blogs",
              route: "/blog",
            ),
            Spacer(),
            TabsWeb(
              "About",
              route: "/about",
            ),
            Spacer(),
            TabsWeb(
              "Contact",
              route: "/contact",
            ),
            Spacer()
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: deviceHeight - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                            color: Colors.tealAccent),
                        child: SansBold("Hello I'm", 15)),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold("Naman Singh", 55.0),
                    Sans(30.0, "Flutter developer"),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(15.0, "naman2singh9@gamil.com")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(15.0, "7351691436")
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(15.0, "Hathras, UttarPradesh")
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                  radius: 186.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 183.0,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/circleImage.png"),
                      radius: 180,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AboutMeWeb(deviceHeight / 1.5, deviceWidth / 1.9,aboutSectionWidth: deviceWidth,),
          Whatido(deviceHeight / 1.3),
          Contactme(deviceHeight, deviceWidth / 1.5)
        ],
      ),
    );
  }
}
