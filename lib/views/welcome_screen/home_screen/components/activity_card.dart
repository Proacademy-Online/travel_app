import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  String iconblue;
  String activitytxt;
  String iconwhite;

  ActivityCard({this.activitytxt, this.iconblue, this.iconwhite});

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        child: Padding(
          padding:
              EdgeInsets.only(top: screenheight / 32, right: screenwidth / 25),
          child: Container(
            width: screenwidth * 0.3,
            height: screenheight * 0.2,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                color: isClicked ? Color(0XFF0172c0) : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0XFF0172c0), width: 2)),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                        isClicked ? widget.iconwhite : widget.iconblue)),
                Text(
                  widget.activitytxt,
                  style: TextStyle(
                      color: isClicked ? Colors.white : Color(0XFF0172c0),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
