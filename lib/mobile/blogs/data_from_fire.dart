import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void article() async {
  await FirebaseFirestore.instance
      .collection("articles")
      .get()
      .then((querySnapshot) {
    querySnapshot.docs.forEach((element) {
      print(element.data()["title"]);
      //print(element.data()["body"]);
    });
  });
}

void streamArticles() async {
  await for (var snapshots
      in FirebaseFirestore.instance.collection("articles").snapshots()) {
    for (var title in snapshots.docs) {
      print(title.data()['title']);
    }
  }
}
