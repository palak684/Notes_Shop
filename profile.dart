import 'package:firebase_project/screens/settings.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'home.dart';
import 'notifications.dart';

class Profile extends StatelessWidget {
  final AuthService _auth= AuthService();
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(444, 150, 89, 205),
          automaticallyImplyLeading: true,

          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text('My Profile'),
          leading: IconButton(
            color: Color.fromARGB(255, 238, 233, 239),
            icon: Icon(Icons.arrow_back),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CSE()),
              ),
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/WhatsApp Image 2022-09-21 at 9.30.42 PM.jpeg"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            // ignore: prefer_const_literals_to_create_immutables

            children: <Widget>[
              CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/co.png'),
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                            foregroundColor: Color.fromARGB(255, 98, 3, 114),
                            radius: 25,
                            backgroundColor: Color.fromARGB(242, 238, 225, 238),
                            child: Icon(Icons.camera_alt_outlined)))
                  ])),
              SizedBox(
                width: 50,
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                'NAME',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Color.fromARGB(178, 234, 226, 237),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Enrollment no. || Branch || Year',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Color.fromARGB(178, 234, 226, 237),
                ),
              ),
              SizedBox(
                width: 50,
                height: 5,
              ),
              SizedBox(
                width: 50,
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(444, 150, 89, 205),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  title: Text(
                    'My Prints',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color.fromARGB(255, 254, 253, 255),
                    ),
                  ),
                  leading: Icon(Icons.print),
                  iconColor: Colors.white,
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 50,
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(444, 150, 89, 205),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  title: Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color.fromARGB(255, 254, 253, 255),
                    ),
                  ),
                  leading: Icon(Icons.notifications_outlined),
                  iconColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListViewHome()),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 50,
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                color: Color.fromARGB(444, 150, 89, 205),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Color.fromARGB(255, 254, 253, 255),
                    ),
                  ),
                  leading: Icon(Icons.settings_outlined),
                  iconColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page()),
                    );
                  }
                    ),
                    ),
                    SizedBox(
                    width: 50,
                    height: 20,
                    ),
                    Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                    margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    ),
                    color: Color.fromARGB(444, 150, 89, 205),
                    child: ListTile(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                    title: Text(
                    'Help center',
                    style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Color.fromARGB(255, 254, 253, 255),
                    ),
                    ),
                    leading: Icon(Icons.help_center_outlined),
                    iconColor: Colors.white,
                    onTap: () {},
                    ),
                    ),
                    SizedBox(
                    width: 50,
                    height: 20,
                    ),
                    Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                    margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    ),
                    color: Color.fromARGB(444, 150, 89, 205),
                    child: ListTile(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                    title: Text(
                    'Logout',
                    style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Color.fromARGB(255, 254, 253, 255),
                    ),
                    ),
                    leading: Icon(Icons.logout_outlined),
                    iconColor: Colors.white,
                    onTap: () async{
                    await _auth.signOut();
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}