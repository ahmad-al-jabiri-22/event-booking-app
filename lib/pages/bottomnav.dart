import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eventapplication/pages/booking.dart';
import 'package:eventapplication/pages/home.dart';
import 'package:eventapplication/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  late Booking booking;
  late Home home;
  late Profile profile;
  int curruenTabIndex = 0;

  @override
  void initState() {
    home = Home();
    booking = Booking();
    profile = Profile();
    pages = [home, booking, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CurvedNavigationBar(
      height: 65,
      backgroundColor: Colors.white,
      color: Colors.black,
      animationDuration: Duration(milliseconds: 250),
      onTap: (int index) {
        setState(() {
          curruenTabIndex = index;
        });
      },
   
      items: [
        Icon(Icons.home, color: Colors.white,),
        Icon(Icons.person, color: Colors.white,),
        Icon(Icons.book_rounded,color: Colors.white,)
      ]),
        body: pages[curruenTabIndex],
      );


  }
}
