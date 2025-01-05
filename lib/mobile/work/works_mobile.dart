import 'package:flutter/material.dart';
import 'package:portfolio/mobile/work/workdone_mobile.dart';
import 'package:portfolio/utilsMobile/mobiledrawer.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      endDrawer: Mobiledrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/images/works.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                expandedHeight: 500,
              )
            ];
          },
          body: ListView(
            padding: EdgeInsets.all(20.0),
            children: const [WorkdoneMobile()],
          )),
    );
  }
}
