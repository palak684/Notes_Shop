import 'package:flutter/material.dart';

import 'course.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool _isChecked = false;

  // This function is triggered when the button is clicked
  void _doSomething() {
    // Do something
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: new SizedBox(
        width: 220,
        height: 60,
        child: FloatingActionButton.extended(
          onPressed: () {
            if (_isChecked == true) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseS()),
              );
            }
            else{
              null;
            }
            },
          label: Text('Register'),
          // icon: Image.asset(
          //     'Assets/terms n conditions.png',
          //     height: 32,
          //     width: 32),
          backgroundColor: Colors.purple.shade900,
          foregroundColor: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/terms n conditions.png"),
                fit: BoxFit.fill
            )
        ),
        padding: EdgeInsets.only(top:470, left:5, right:10),
        alignment: Alignment.bottomLeft,



        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 150),
            CheckboxListTile(
              value: _isChecked,
              selected: _isChecked,
              contentPadding: EdgeInsets.zero,
              onChanged: (v) {
                setState(() {
                  print(v);
                  _isChecked = v!;
                });
              },
              title: Text(
                'I accept the terms and conditions',
                maxLines: 5,
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],

        ),
      ),
    );

  }
}
