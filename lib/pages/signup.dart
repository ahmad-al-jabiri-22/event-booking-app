import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/img_bg_2.png"),
            SizedBox(height: 20),
            Text(
              "Unlock the Future of",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Event Booking App",
              style: TextStyle(
                color: Color(0xff6351ec),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Discover, book, and experience unforgettable moments efforetlessly!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),

            Container(
              width: MediaQuery.sizeOf(context).width * 0.8,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orangeAccent[200],
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/google_img.png", width: 30, height: 30),
                  SizedBox(width: 20),
                  Text(
                    "Sign in with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
