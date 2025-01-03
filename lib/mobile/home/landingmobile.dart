import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class Landingmobile extends StatelessWidget {
  const Landingmobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 117.0,
          backgroundColor: Colors.tealAccent,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 113.0,
            child: CircleAvatar(
              radius: 110.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/circleImage.png"),
            ),
          ),
        ),
        SizedBox(
          height: 35.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              SansBold("Naman Singh", 40.0),
              Sans(20.0, "Flutter developer"),
              SizedBox(
                height: 15.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, 
              children: const [
                Wrap(
                  direction: Axis.vertical,
                  spacing: 3.0,
                  children: [
                    Icon(Icons.email),
                    Icon(Icons.call),
                    Icon(Icons.location_pin)
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    )
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 9.0,
                  children: [
                    Sans(15.0, 'naman.2singh9@gmail.com'),
                    Sans(15.0, "7351691436"),
                    Sans(15.0, "Hathras, UttarPradesh")
                  ],
                )
              ]),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
