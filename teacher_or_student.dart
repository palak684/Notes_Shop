import 'package:firebase_project/screens/Register%20and%20registration%20screen/register.dart';
import 'package:firebase_project/screens/Register%20and%20registration%20screen/teacher_register.dart';
import 'package:flutter/material.dart';

class Teacher_student extends StatefulWidget {
  const Teacher_student({Key? key}) : super(key: key);

  @override
  State<Teacher_student> createState() => _Teacher_studentState();
}

class _Teacher_studentState extends State<Teacher_student> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context)=>Scaffold(
        body: Container(
          height: 850,
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/registration (1).png')
            ),
          ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new SizedBox(
        width: 220,
        height: 130,
        child: FloatingActionButton.extended(
          heroTag:"student",
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register()),
            );
          },
            icon: Image.asset('assets/student (2).png'),
            label:Text('Student',style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.purple[200]
        ),
      ),
      SizedBox(
        height: 80,
      ),
      new SizedBox(
        width: 220,
        height: 130,
        child: FloatingActionButton.extended(
          heroTag:'teacher',
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register_T()),
              );
            },
            icon: Image.asset('assets/faculty.png'),
            label:Text('Teacher',style: TextStyle(fontSize: 20)),
            backgroundColor: Colors.purple[200]
        ),
      ),
      ],
    ),
        ),
      ),
      ),
    );
  }
}

