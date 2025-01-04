import 'package:flutter/material.dart';
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
        iconTheme: IconThemeData(size: 25.0,color: Colors.black),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerMenu(),
      ),
    );
  }
}
