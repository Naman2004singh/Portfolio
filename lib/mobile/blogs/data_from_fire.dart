import 'package:cloud_firestore/cloud_firestore.dart';

void article() async {
  await FirebaseFirestore.instance
      .collection("articles")
      .get()
      .then((querySnapshot) {
    querySnapshot.docs.forEach((element) {
      //print(element.data()["title"]);
      //print(element.data()["body"]);
    });
  });
}
