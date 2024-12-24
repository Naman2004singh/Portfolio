import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/web/home/about_me_web.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
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
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blogs"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer()
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
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
                      backgroundImage: AssetImage("images/circleImage.png"),
                      radius: 180,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AboutMeWeb(deviceHeight / 1.5, deviceHeight / 1.7),
        ],
      ),
    );
  }
}
