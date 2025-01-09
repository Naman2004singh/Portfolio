import 'package:flutter/material.dart';
import 'package:portfolio/utilsWeb/appBar.dart';
import 'package:portfolio/utilsWeb/drawer.dart';
import 'package:portfolio/web/works/works_done.dart';


class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerMenu(),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Appbar(),
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
            children: const[
             WorksDone()
            ],
          )),
    ));
  }
}
