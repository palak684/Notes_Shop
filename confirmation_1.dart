import 'package:flutter/material.dart';
import 'home.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
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
                          MaterialPageRoute(builder: (context) => CSE()),
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
