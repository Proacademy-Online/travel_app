import 'package:flutter/material.dart';
import 'package:travel_app/views/welcome_screen/home_screen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenwidth,
        height: screenheight,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black, BlendMode.softLight),
                image: AssetImage('assets/images/bg5.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                "The Travelling App",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenheight / 10),
              child: Text(
                "Connect with people and plan your next scape to explore this beautiful world !",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                width: screenwidth * 0.4,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0XFF0172c0).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Lets Go !",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
