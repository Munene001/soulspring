import 'package:flutter/material.dart';

Color chocolateBrown = Color(0xFF7B3F00);
const Color tealColor = Color(0xFF008080);
const Color turquoiseColor = Color(0xFF40E0D0);

GestureDetector section(
  LinearGradient gradient,
  String text1,
  String text2,
  Function onTap,
  IconData iconData,
) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(3),
          border: Border.all(color: Colors.grey.withOpacity(0.5))),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  gradient: gradient,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread of the shadow
                      blurRadius: 5, // Blur intensity
                      offset:
                          Offset(4, 4), // Shadow offset (horizontal, vertical)
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2), // Highlight color
                      spreadRadius: 2, // Spread of the highlight
                      blurRadius: 5, // Blur intensity
                      offset: Offset(
                          -2, -2), // Highlight offset (horizontal, vertical)
                    ),
                  ],
                ),child:Center( 
                 child: Icon(
                iconData,
                color: Colors.brown,
                size: 28,
                 ),
              ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                // Set your desired background color here
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 7), // Add horizontal padding to text1
                      child: Text(
                        text1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: tealColor),
                      ),
                    ),
                    SizedBox(
                        height: 18), // Add a small space between the two texts
                     //Pa Add a left margin to text2
                     Padding(padding:EdgeInsetsDirectional.only(start: 30),
                      child: Text(
                        text2,
                        style: TextStyle(fontSize: 17, color: tealColor),
                      ),
                     ),
                    
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    ),
  );
}
