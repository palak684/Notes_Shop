import 'package:flutter/material.dart';
import 'Register and registration screen/teacher_or_student.dart';
import 'login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder:(context)=>Scaffold(
        body: Container(
          height:850,
          width:500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/home.png')
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new SizedBox(
                height: 400,
              ),
              new SizedBox(
                  width: 220,
                  height: 40,
                  child: FloatingActionButton.extended(
                      heroTag:"signin",
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teacher_student()),
                        );
                      },
                      label: Text('Sign in'),
                      backgroundColor: Colors.purple[200]
                  )
              ),
              new SizedBox(
                height: 20,
              ),
              new SizedBox(
                  width: 220,
                  height: 40,
                  child: FloatingActionButton.extended(
                    heroTag: 'login',
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    label: Text('Login',),
                    backgroundColor: Colors.purple[200],
                  )
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}