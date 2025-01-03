import 'package:flutter/material.dart';
import 'package:portfolio/utilsWeb/appBar.dart';
import 'package:portfolio/utilsWeb/drawer.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/web/home/contactMe.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerMenu(),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 500.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 25.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "images/contact_image.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                title: Appbar(),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Contactme(heightDevice, widthDevice / 1.5),
              ],
            ),
          )),
    );
  }
}
