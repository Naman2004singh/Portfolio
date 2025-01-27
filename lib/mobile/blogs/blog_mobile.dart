import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/mobile/blogs/blogPost.dart';
import 'package:portfolio/mobile/blogs/data_from_fire.dart';
import 'package:portfolio/utilsMobile/mobiledrawer.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  @override
  void initState() {
    super.initState();
    //article();
    streamArticles();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: Mobiledrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                bottom: PreferredSize(
                    preferredSize: Size(screenWidth / 1.5, screenWidth / 3),
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: SansBoldColor(
                        color: Colors.white,
                        text: "Welcome to my blog",
                        size: 30.0,
                      ),
                    )),
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/images/blog.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("articles").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot documentSnapshot =
                          snapshot.data!.docs[index];
                      return Blogpost(
                          body: documentSnapshot["body"],
                          title: documentSnapshot["title"]);
                    },
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    ));
  }
}
