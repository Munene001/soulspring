import 'package:flutter/material.dart';
import 'package:soulspring/Reusablewidget/mood.dart';
import 'package:soulspring/Reusablewidget/select.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String username;

  const MyAppBar({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(top: 18, left: 30),
            child: Text(
              'Hi $username',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(175);
}

class Homescreen extends StatelessWidget {
  final String username;

  const Homescreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(username: username),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
         

          

                child: Column( // Combine the children into a single Column
                crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start (left)
            children: [

              SizedBox(
                height: 7,
              ),

              Text("Mood", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.brown)),
              SizedBox(
                height: 7,
              ),
              
              Row(
                children: [
                  mood(AssetImage("assets/img1.jpg"), "Calm", () {}),
                  SizedBox( width: 10,),
                  mood(AssetImage("assets/img2.jpg"), "Stress", () {}),
                  SizedBox( width: 10,),
                  mood(AssetImage("assets/img3.jpg"), "Anxious", () {}),
                ],
              ),

               Text("Activities", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.brown)),
              SizedBox(
                height: 7,
              ),
              section(
                AssetImage("assets/pen1.jpg"),
                "JOURNALLING",
                "Personal voyage of self-expression and introspection",
                () {},
                Icons.create,
              ),
              section(
                AssetImage("assets/pen2.jpg"),
                "MEDITATION",
                "Mindful meditation for inner peace and clarity.",
                () {},
                Icons.spa,
              ),
              section(
                AssetImage("assets/pen2.jpg"),
                "THERAPY",
                "Professional support for emotional growth and healing",
                () {},
                Icons.person,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}