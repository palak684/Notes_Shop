import 'package:firebase_project/screens/for_print.dart';
import 'package:firebase_project/screens/home_teacher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Upload_T extends StatefulWidget {
  const Upload_T({Key? key}) : super(key: key);

  @override
  State<Upload_T> createState() => _Upload_TState();

}

class _Upload_TState extends State<Upload_T> {
  String selectedValue = "For Students";
  String selectedValue2 = "Black-White";
  int price=0;
  int total_cost=0;
  int flag=0;
  final myController = TextEditingController();
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("For Students"),value: "For Students"),
      DropdownMenuItem(child: Text("For printout"),value: "For printout"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems2{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Black-White"),value: "Black-White"),
      DropdownMenuItem(child: Text("Coloured"),value: "Coloured"),
    ];
    return menuItems;
  }
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Row(
          children: [
            new Text('UPLOAD',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:40,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            new Container(
              child: Image(
                image: NetworkImage('https://i.postimg.cc/xCKjGhsp/final-pic-as.png'),
                width: 200,
                height: 200,
              ),
            ),
            new Container(
              child: Text('print.pdf',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                new Text('What to do with pdf: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 3.0,
                      fontSize: 20,
                    )),
                new DropdownButton(
                    value: selectedValue,
                    onChanged: (String? newValue){
                      setState(()
                      {
                        selectedValue=newValue!;
                      });
                      if(selectedValue=='For printout') {
                        flag=1;
                      }
                      else{
                        null;
                      }
                    },
                    items: dropdownItems
                )
              ],
            ),
            SizedBox(height:15),
            Container(
              padding:  EdgeInsets.symmetric(vertical:30,horizontal: 100),
              color: Colors.white,
              child: ElevatedButton (
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  minimumSize: Size(10, 10),
                  textStyle: TextStyle(fontSize: 28),
                  primary: Colors.purple.shade900,
                  onPrimary: Colors.black,
                ),
                child: Text('Next',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 30,
                  ),
                ),
                onPressed:  ()=>{
                  if(flag==1){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => For_print()),
                    ),
                  }
                  else{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CSE_T()),
                    ),
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

