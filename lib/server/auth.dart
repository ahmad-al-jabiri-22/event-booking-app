import 'package:eventapplication/server/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
signInWithGoogle(BuildContext context) async {
  try {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount == null) {
      // User canceled the sign-in process.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("Google Sign-In was canceled."),
        ),
      );
      return;
    }

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    UserCredential result = await firebaseAuth.signInWithCredential(credential);

    User? userDetails = result.user;

    if (userDetails != null) {
      Map<String, dynamic> userData = {
        "Name": userDetails.displayName,
        "Email": userDetails.email,
        "Image": userDetails.photoURL,
        "Id": userDetails.uid,
      };

      await DatabaseMethods().addUserDetail(userData, userDetails.uid);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text("Registered Successfully!!!"),
        ),
      );
    }
  } catch (e) {
    print("Error during Google Sign-In: $e");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text("An error occurred during Google Sign-In."),
      ),
    );
  }
}

}
