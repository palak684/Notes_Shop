import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
            title: Text("Battery Full"),
            subtitle: Text("The battery is full."),
            leading: CircleAvatar(backgroundImage: AssetImage("assets/order list.jpeg")),
            trailing: Icon(Icons.star)),
        ListTile( title: Text("Anchor"),subtitle: Text("Lower the anchor."), leading: CircleAvatar(backgroundImage: AssetImage("assets/Image 1.jpeg")), trailing: Icon(Icons.star)),
        ListTile( title: Text("Alarm"),subtitle: Text("This is the time."), leading:  CircleAvatar(backgroundImage: AssetImage("assets/Image 2.jpeg")), trailing: Icon(Icons.star)),
        ListTile( title: Text("Ballot"),subtitle: Text("Cast your vote."), leading:  CircleAvatar(backgroundImage: AssetImage("assets/Image 3.jpeg")), trailing: Icon(Icons.star))
      ],
    );
  }
}