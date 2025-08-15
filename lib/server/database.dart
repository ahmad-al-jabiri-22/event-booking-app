import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
Future addUserDetail(Map<String, dynamic> userInfoMap, String id) async {
  try {
    print("Attempting to add user to Firestore with ID: $id");
    await FirebaseFirestore.instance
        .collection("user")
        .doc(id)
        .set(userInfoMap);
    print("User added successfully.");
  } catch (e) {
    print("Error adding user to Firestore: $e");
  }
}

}


