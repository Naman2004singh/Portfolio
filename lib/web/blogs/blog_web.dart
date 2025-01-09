import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/mobile/blogs/blogPost.dart';
import 'package:portfolio/utilsWeb/appBar.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({super.key});

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {
  // @override
  // void initState() {
  //   super.initState();
  //   //article();
  //   streamArticles();
  // }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Appbar(),
                expandedHeight: 500.0,
                backgroundColor: Colors.white,
                bottom: PreferredSize(
                    preferredSize: Size(screenHeight / 3, screenHeight / 6),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: SansBoldColor(
                        color: Colors.white,
                        text: "Welcome to my blog",
                        size: 40.0,
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
