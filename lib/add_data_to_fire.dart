import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

class AddDataToFire {
  var logger = Logger();
  CollectionReference response =
      FirebaseFirestore.instance.collection("message");
  Future<void> addResponse(final firstName, final lastName, final email,
      final phone, final message) async {
    return response.add({
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "phone_no": phone,
      "message": message
    }).then((value) => logger.d("Success")).catchError((error) => logger.d("Error:$error"));
  }
}
