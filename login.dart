import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Register.png')
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField (
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Enter Email ID',
                      filled: true,
                      fillColor: Colors.purple[200]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField (
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Enter Password',
                      filled: true,
                      fillColor: Colors.purple[200]
                  ),
                ),
              ),
              new SizedBox(
                  width: 220,
                  height: 40,
                  child: FloatingActionButton.extended(
                      heroTag: 'login',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CSE()),
                        );
                      },
                      label: Text('Login',style: TextStyle(color: Colors.black)),
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
                    label: Text('Login in with Google'),
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
                  label: Text('Login in with Apple'),
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