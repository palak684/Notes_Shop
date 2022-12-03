import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'confirmation_1.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
class Virtual extends StatefulWidget {
  const Virtual({Key? key}) : super(key: key);

  @override
  State<Virtual> createState() => _VirtualState();
}

class _VirtualState extends State<Virtual> {
  String selectedValue = "Black-White";
  int price=2;
   final myController = TextEditingController();
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Coloured"),value: "Coloured"),
      DropdownMenuItem(child: Text("Black-White"),value: "Black-White"),
    ];
    return menuItems;
  }
  Future<firebase_storage.VirtualTask?> virtualFile(File file) async {
    if (file == null) {
      return null;
    }

    firebase_storage.VirtualTask virtualTask;

    // Create a Reference to the file
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('files')
        .child('/some-file.pdf');

    final metadata = firebase_storage.SettableMetadata(
        contentType: 'file/pdf',
        customMetadata: {'picked-file-path': file.path});
    print("Uploading..!");

    virtualTask = ref.putData(await file.readAsBytes(), metadata);

    print("done..!");
    return Future.value(virtualTask);
  }
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      appBar: AppBar(
        title: Row(
          children: [
            new Container(
                child: Icon(CupertinoIcons.back,
                    size: 40,
                    color: Colors.white)),
            new Text('     VIRTUAL',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:50,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.purple.shade900,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0.0),
        child: new Column(
          children: <Widget>[
            SizedBox(height: 30),

            new Container(
              child: Image(
                image: NetworkImage('https://cdn-icons-png.flaticon.com/512/4/4259.png'),
                width: 200,
                height: 200,
              ),
            ),
            new Container(
              child: Text('selected.pdf',
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
                new Text('  Print type:   ',
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
                      if(selectedValue=='Coloured'){
                        price=5;
                      }
                      else{
                        price=2;
                      }
                    },
                    items: dropdownItems
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                new Text("  Cost/page:    ",
                      style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 30,
                    )),
                new SizedBox(
                  child: Text(price.toString()),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            new  Container(
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
                child: Text('Place Order',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 30,
                  ),
                ),
                onPressed:  ()=>{
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
    );
  }
}
