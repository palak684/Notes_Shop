import 'package:firebase_project/screens/terms_teacher.dart';
import 'package:flutter/material.dart';

class Register_T extends StatefulWidget {
  const Register_T({Key? key}) : super(key: key);

  @override
  State<Register_T> createState() => _Register_TState();
}

class _Register_TState extends State<Register_T> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 500,
          height: 850,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Register.png'), fit: BoxFit.cover
            ),
          ),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField (
                  scrollPadding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Name',
                      filled: true,
                      fillColor: Colors.purple[200]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField (
                  scrollPadding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Email ID',
                      filled: true,
                      fillColor: Colors.purple[200]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField (
                  scrollPadding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.purple[200]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField (
                  scrollPadding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.purple[200]
                  ),
                ),
              ),
              new SizedBox(
                  width: 220,
                  height: 40,
                  child: FloatingActionButton.extended(
                      heroTag: 'register',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage_T()),
                        );
                      },
                      label: Text('Register',style: TextStyle(color: Colors.black)),
                      backgroundColor: Colors.white
                  )
              ),
              Text(
                  'OR',
                  style: TextStyle(fontSize: 35,color: Colors.black)
              ),
              new SizedBox(
                  width: 220,
                  height: 40,
                  child: FloatingActionButton.extended(
                    heroTag: 'google',
                    onPressed: (){},
                    label: Text('Sign in with Google'),
                    icon: Image.asset(
                        'assets/google icon.jpg',
                        height: 30,
                        width: 30),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  )
              ),
              SizedBox(
                height: 10,
              ),
              new SizedBox(
                width: 220,
                height: 40,
                child: FloatingActionButton.extended(
                  heroTag: 'apple',
                  onPressed: (){},
                  label: Text('Sign in with Apple'),
                  icon: Image.asset(
                      'assets/apple.png',
                      height: 32,
                      width: 32),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
