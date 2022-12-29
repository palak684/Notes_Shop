import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../reusable_widget.dart';
import '../terms.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _EmailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Register.png'), fit: BoxFit.cover
            ),
          ),
          child:SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Column(
                children: <Widget>[
                  reusableTextField("Enter UserName", Icons.person_outline, false, _userNameTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Email", Icons.email, false, _EmailTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                  SizedBox(
                    height: 20,
                  ),
                  SigninSignupButton(context, false, (){
                    FirebaseAuth.instance.createUserWithEmailAndPassword(email: _EmailTextController.text,
                        password: _passwordTextController.text).then((value)
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    });
                    }
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
