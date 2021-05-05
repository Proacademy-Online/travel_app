import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenwidth,
        height: screenheight / 2,
        color: Colors.amber,
        child: Stack(
          children: [
            Container(
              height: screenheight / 3,
              width: screenwidth / 2,
              color: Colors.red,
            ),
            Positioned(
              top: 100,
              left: 100,
              child: Container(
                width: screenwidth / 2,
                height: screenheight / 3,
                color: Colors.black,
              ),
            ),
            Positioned(
                top: 300,
                left: 100,
                child: Icon(
                  Icons.ac_unit,
                  size: 40,
                  color: Colors.white,
                )),
            Positioned(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: screenwidth / 2,
                  height: screenheight / 3,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
