import 'package:flutter/material.dart';

import 'confirmation_1.dart';

class Virtual extends StatelessWidget {
  const Virtual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/virtual.jpeg"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    minimumSize: Size(10, 10),
                    textStyle: TextStyle(fontSize: 28),
                    primary: Colors.purple[600],
                    onPrimary: Colors.black,


                  ),
                  child: Text('Place Order',
                    style: TextStyle(
                      color: Colors.white,

                      letterSpacing: 2.0,
                      fontSize: 30,

                    ),

                  ),
                  onPressed: () => {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Confirmation()),
                  ),
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