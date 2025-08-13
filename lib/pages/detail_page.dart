import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/img_1.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30, left: 20),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(color: Colors.black54),
                        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amman Concert',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.calendar_month, color: Colors.white),
                                SizedBox(width: 10),
                                Text(
                                  '31 Dec 2025',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.location_on, color: Colors.white),
                                SizedBox(width: 10),
                                Text(
                                  'Amman, Jordan',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'About Event',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      'Last night’s summer concert was an unforgettable experience filled with music, energy, and excitement. Held in the open-air arena, the event brought together hundreds of fans eager to see their favorite artists perform live. The stage lit up with vibrant colors as the band played a mix of their classic hits and new releases. The crowd sang along to every lyric, waving glow sticks in the air. Between songs, the lead singer interacted with the audience, creating a warm and lively atmosphere. As the night ended with a powerful encore, fireworks lit up the sky, leaving everyone in awe and wanting more.',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text("Number of Tickets",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          SizedBox(width: 40,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black,width: 2),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Column(
                              
                              children: [
                                Icon(FontAwesomeIcons.plus),
                                SizedBox(height: 10,),
                                Text("5",style: TextStyle(fontSize: 22,color: Color(0xff6351ec),fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Icon(FontAwesomeIcons.minus),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Amount : \$150",
                        style: TextStyle(
                          color: Color(0xff6351ec),
                          fontSize: 23,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 20,),
                        Container(
                          
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black)
                            ,borderRadius: BorderRadius.circular(10)
                          ,color: Color(0xff6351ec)),
                          child: Text("Book Now", style: TextStyle(fontSize: 26,color: Colors.white),),
                        )

                      ],
                    )
                    ,SizedBox(height: 40,)
                  ],
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
