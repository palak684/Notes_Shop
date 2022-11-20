import 'package:firebase_project/screens/home_teacher.dart';
import 'package:flutter/material.dart';

class Confirmation_T extends StatefulWidget {
  const Confirmation_T({Key? key}) : super(key: key);

  @override
  State<Confirmation_T> createState() => _Confirmation_TState();
}

class _Confirmation_TState extends State<Confirmation_T> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 850,
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/confirmation 1.png')
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
                      heroTag:"confirmation",
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CSE_T()),
                        );
                      },
                      label: Text('Go Home'),
                      backgroundColor: Colors.purple[200]
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
