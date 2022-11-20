import 'dart:io';
import 'package:firebase_project/screens/confirmation_teacher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
class For_print extends StatefulWidget {
  const For_print({Key? key}) : super(key: key);

  @override
  State<For_print> createState() => _For_printState();

}

class _For_printState extends State<For_print> {
  String selectedValue = "Black-White";
  int price=2;
  bool isuploaded=false;
  final myController = TextEditingController();
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Coloured"),value: "Coloured"),
      DropdownMenuItem(child: Text("Black-White"),value: "Black-White"),
    ];
    return menuItems;
  }
  Future<firebase_storage.UploadTask?> uploadFile(File file) async {
    if (file == null) {
      return null;
    }

    firebase_storage.UploadTask uploadTask;

    // Create a Reference to the file
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('files')
        .child('/some-file.pdf');

    final metadata = firebase_storage.SettableMetadata(
        contentType: 'file/pdf',
        customMetadata: {'picked-file-path': file.path});
    print("Uploading..!");

    uploadTask = ref.putData(await file.readAsBytes(), metadata);

    print("done..!");
    return Future.value(uploadTask);
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
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35)),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300]
                  ),
                  onPressed: () async{
                    final path = await FlutterDocumentPicker.openDocument();
                    print(path);
                    File file = File(path!);
                    firebase_storage.UploadTask? task = await uploadFile(file);
                    if(file!=null){
                      isuploaded=true;
                    }
                  },
                  icon: Icon(Icons.upload_file),
                  label: Text(
                    'Upload file',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
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
                      fontSize: 20,
                    )),
                new SizedBox(
                  child: Text(price.toString()),
                ),
              ],
            ),
            SizedBox(height: 20),
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
                child: Text('Place Order',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 30,
                  ),
                ),
                onPressed:  ()=>{
                  if(isuploaded==true){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Confirmation_T()),
                    ),
                  }
                  else{
                    null
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

