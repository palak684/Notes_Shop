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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple[800],
          leading:
          IconButton( onPressed: (){
            Navigator.pop(context);
          },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Register.png'), fit: BoxFit.cover
            ),
          ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Column(children:[
              Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 40
              ),
                  child: Column(children:[
                  reusableTextField("Enter UserName", Icons.person_outline, false, _userNameTextController),
                  SizedBox(
                    height: 30,
                  ),
                  ],
                ),
              ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 40
          ),
                  child:Column(children:[
                  reusableTextField("Enter Email", Icons.email, false, _EmailTextController),
                  SizedBox(
                    height: 30,
                  ),
                  ],
                  ),
        ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 40
            ),

                  child:Column(children: [
                  reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                  SizedBox(
                    height: 20,
                  ),
                  ],
                  ),
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
                ],
              ),
        ),
      ),
    );
  }
}
