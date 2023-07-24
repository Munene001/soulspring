import 'package:flutter/material.dart';

Color chocolateBrown = Color(0xFF7B3F00);
const Color tealColor = Color(0xFF008080);
const Color turquoiseColor = Color(0xFF40E0D0);


GestureDetector section(
  ImageProvider imageProvider,
  String text1,
  String text2,
  Function onTap,
  IconData iconData,
) {
  return GestureDetector(
    onTap: (){},
    child: Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
                    BoxShadow(blurRadius: 7,color:Colors.grey.withOpacity(0.7),
                    spreadRadius: 3, offset: Offset(0, 3),
                    ),
                  ]
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              flex: 4,
              child: Container(
                // Set your desired background color here
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10), // Add horizontal padding to text1
                      child: Text(
                        text1,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: tealColor),
                      ),
                    ),
                    SizedBox(height: 25), // Add a small space between the two texts
                    Padding(
                      padding: EdgeInsets.only(left: 14), // Add a left margin to text2
                      child: Text(
                        text2,
                        style: TextStyle(fontSize: 17, color:tealColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(
                iconData,
                color: Colors.green,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

