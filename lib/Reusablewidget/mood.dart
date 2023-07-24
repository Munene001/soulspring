import 'package:flutter/material.dart';

GestureDetector mood(
  ImageProvider imageProvider,
  String text1,
  Function onTap,
) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      
        

      
      height: 175,
      child: Padding(padding:EdgeInsets.all(8),
      child: Column(
        children: [
          Text(text1, style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),),

          SizedBox(height: 10,),
          Container(
            height: 110,
            width:105,
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
               BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // horizontal, vertical offset
                ),
        ]
              

              

              
            ),
          )
         

          
          

        ],
      ),
       ),

    ),

  );
}
