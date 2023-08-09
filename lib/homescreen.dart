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
        padding: EdgeInsets.only(top: 25),
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
                fontSize: 25,
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
          child: Column(
            // Combine the children into a single Column
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the start (left)
            children: [
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20), // Add padding to the left of "Mood" text
                child: Text(
                  "Mood",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.brown),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  mood(Icons.sentiment_very_satisfied, "Calm", () {}),
                  SizedBox(
                    width: 10,
                  ),
                  mood(Icons.sentiment_dissatisfied, "Stress", () {}),
                  SizedBox(
                    width: 10,
                  ),
                  mood(Icons.sentiment_very_dissatisfied, "Anxiety", () {}),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20), // Add padding to the left of "Mood" text
                child: Text(
                  "Activities",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.brown),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              section(
                LinearGradient(
                    colors: [Colors.lightBlue.withOpacity(0.4), Colors.blue.withOpacity(0.7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                "JOURNALLING",
                "Personal voyage of self-expression and introspection",
                () {},
                Icons.create,
              ),
              section(
                LinearGradient(
                  colors: [Colors.orange.withOpacity(0.4), Colors.deepOrange.withOpacity(0.7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                "MEDITATION",
                "Mindful meditation for inner peace and clarity.",
                () {},
                Icons.spa,
              ),
              section(
                LinearGradient(
                  colors: [Colors.purple.withOpacity(0.4), Colors.deepPurple.withOpacity(0.7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
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
