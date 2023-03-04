import 'package:firebase_project/screens/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _EmailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple[800],
          leading:
          IconButton( onPressed: (){
            Navigator.pop(context);
          },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/Register (1).png'), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Column(children:[

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
              SigninSignupButton(context, true, (){
                FirebaseAuth.instance.signInWithEmailAndPassword(email: _EmailTextController.text,
                    password: _passwordTextController.text).then((value)
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CSE()),
                  );
                });
              },)
            ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
