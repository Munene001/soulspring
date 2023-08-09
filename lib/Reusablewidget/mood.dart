import 'package:flutter/material.dart';
import 'package:soulspring/Reusablewidget/select.dart';
const Color tealColor = Color(0xFF008080);

GestureDetector mood(
  IconData iconData,
  String text1,
  Function onTap,
) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 175,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: tealColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              width: 105,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  border: Border.all(color: Colors.green, width: 1.0),
                  gradient: LinearGradient(colors: [
                    Colors.green.withOpacity(0.2),
                    Colors.green.withOpacity(0.5)
                  ], begin: Alignment.topLeft, 
                      end:Alignment.bottomRight)),
              child: Icon(
                iconData,
                color: Colors.green,
                size: 48,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
