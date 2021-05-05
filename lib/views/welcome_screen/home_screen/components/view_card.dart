import 'package:flutter/material.dart';

class ViewCard extends StatelessWidget {
  String cardtxt;
  String imgurl;

  ViewCard({this.imgurl, this.cardtxt});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return ClipRRect(
      // borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: screenwidth / 2.8,
          height: screenheight / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
            image:
                DecorationImage(image: AssetImage(imgurl), fit: BoxFit.cover),
          ),
          child: Container(
            width: screenwidth / 3,
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cardtxt,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white, shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                      offset: Offset(0, 5))
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
