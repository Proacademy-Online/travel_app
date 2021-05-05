import 'package:flutter/material.dart';
import 'package:travel_app/views/welcome_screen/home_screen/components/activity_card.dart';
import 'package:travel_app/views/welcome_screen/home_screen/components/view_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Stack(
              children: [
                Container(
                  width: screenwidth,
                  height: screenheight / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.softLight),
                          image: AssetImage('assets/images/homebg3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 25,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: screenwidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenheight * 0.35),
                  padding: EdgeInsets.only(
                      top: screenheight * 0.04, left: screenwidth * 0.06),
                  // height: screenheight * 0.8,
                  width: screenwidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Activities you love",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ActivityCard(
                              activitytxt: "Kayaking",
                              iconblue: 'assets/icons/kayak-blue.png',
                              iconwhite: 'assets/icons/kayak-white.png',
                            ),
                            ActivityCard(
                              activitytxt: "Hiking",
                              iconblue: 'assets/icons/hiking-blue.png',
                              iconwhite: 'assets/icons/hiking-white.png',
                            ),
                            ActivityCard(
                              activitytxt: "Fishing",
                              iconblue: 'assets/icons/fishing-blue.png',
                              iconwhite: 'assets/icons/fishing-white.png',
                            ),
                            ActivityCard(
                              activitytxt: "Boating",
                              iconblue: 'assets/icons/boat-blue.png',
                              iconwhite: 'assets/icons/boat-white.png',
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Recomended View",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: screenheight / 40,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ViewCard(
                              imgurl: 'assets/images/place1.png',
                              cardtxt: "Lichnos camp Greece",
                            ),
                            ViewCard(
                              imgurl: 'assets/images/place2.png',
                              cardtxt: "Lichnos camp Greece",
                            ),
                            ViewCard(
                              imgurl: 'assets/images/place3.png',
                              cardtxt: "Lichnos camp Greece",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenheight / 30,
                      ),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
