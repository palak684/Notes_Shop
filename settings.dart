import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  late TextEditingController controller;
  String name = 'Name';
  String email = 'xyz@gmail.com';
  String number = "XXXXXXXXXX";

  @override
  void initState(){
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void submit(){
      Navigator.of(context).pop(controller.text);
    }
    Future<String?> openusername() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Username"),
        content: TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: 'Enter Username'),
          controller: controller,
        ),
        actions: [
          TextButton(onPressed: submit, child: Text('SUBMIT'),
          ),
        ],
      ),
    );
    Future<String?> openemail() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Email ID"),
        content: TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: 'Enter email id'),
          controller: controller,
        ),
        actions: [
          TextButton(onPressed: submit, child: Text('SUBMIT'),
          ),
        ],
      ),
    );
    Future<String?> openumber() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Mobile Number"),
        content: TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: 'Enter valid number'),
          controller: controller,
        ),
        actions: [
          TextButton(onPressed: submit, child: Text('SUBMIT'),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xFF472478),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFFDAD8DB),
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Image.network('https://s3-alpha-sig.figma.com/img/14e5/9326/5d5cff74e362626bb21f5df380b4fea1?Expires=1664150400&Signature=fNbQkHGTEV22o~4NzogsZ5DRsWF5L0leremtuRfoIDWIrbiKn78MefEQNZq5Ks~XvvKffSNCIp5~syTOq-jYTjHhNsPADR3eNZPPf866NL5N~50lOMTF-tW-ZQkDSQgszsbZw3ocgw6ExmZ83P1VLK~XA14yc-PMj~5XYBuuvZZtpygBvKnFqSy69ZW0G4YcNYAejjTPxPUA4ZO9goUdcOOtfy8NLgUcnxL6zRf2dKBu5FGKE0B5auVvov2liHqkL1P9t1be1fD8SxB--U-~0GHUheJv~ilMWXxQvXwAn96Ozk69PlTJ9I~PkZ0s8IuO7VP86Nkb37Mi5tklirTtKg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
        ),
        centerTitle: true,
        title: Text('SETTINGS', style: TextStyle(color: Color(0xFF6B00F7), fontSize: 43, fontWeight: FontWeight.w400),),

      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://s3-alpha-sig.figma.com/img/6f73/b9db/623e3ecb22a4016871853c978c3d4b97?Expires=1664150400&Signature=GmvaTYZHnLnFVGAPtEoU~bxpb2c2orLs0os27vbpS7sdXX9nc-23d2Fysb2l5Ot20J-YmkcuR9sG1LZUP1g9Tn0-bQLYlqUVChK6VRWTU3eGhGvvqwpPSNLLs0721PSzH3LHwImWGOH9JnBm-ZqSCuaphiSKUnxEBUNiGPLI-Uj1wrsxjUImDRC-Xdo0Y~kGY270~BcGhDcIbGXsnfQEvTqGzJnF6Ev8QEeizywKY60AhvTv9KCr1vUE6x539wYj3K6yEgtyLmsT1b0C1Y7H8W2UUWKKI91NxHtBi3KO-roa-r1hKhSkYUTgqwwQ~WMaL2p37yjXTo-1h4-BxgjMZA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA")
                    ),
                    border: Border.all(
                        width: 5,
                        color: Theme.of(context).scaffoldBackgroundColor
                    ),
                  ),
                ),
                Expanded(child: Column(
                  children: <Widget>[
                    Text(name, style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 30, fontWeight: FontWeight.w500),),
                    Text("Course", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 10, fontWeight: FontWeight.w500),),
                    Text("Enrollment No", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 10, fontWeight: FontWeight.w500),),
                    Text(email, style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 10, fontWeight: FontWeight.w500),),
                  ],
                ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ListTile(
              tileColor: Color(0xFF9A5DD0),
              title: Text("USERNAME", style: TextStyle(color: Color(0xFFFFFFFF))),
              subtitle: Text(name, style: TextStyle(color: Color(0xFFFFFFFF))),
              trailing: Icon(Icons.person, color: Colors.green,),
              onTap: () async {final name = await openusername();
              if(name == null || name.isEmpty)
                return;
              setState(() => this.name = name);
              },
            ),
            SizedBox(height: 20,),
            ListTile(
              tileColor: Color(0xFF9A5DD0),
              title: Text("EMAIL", style: TextStyle(color: Color(0xFFFFFFFF))),
              subtitle: Text(email, style: TextStyle(color: Color(0xFFFFFFFF))),
              trailing: Icon(Icons.email_outlined, color: Colors.white70,),
              onTap: ()async {final email = await openemail();
              if(email == null || email.isEmpty)
                return;
              if(email.contains('@gmail.com'))
                setState(() => this.email = email);
              },
            ),
            SizedBox(height: 20,),
            ListTile(
              tileColor: Color(0xFF9A5DD0),
              title: Text("MOBILE NUMBER", style: TextStyle(color: Color(0xFFFFFFFF))),
              subtitle: Text(number, style: TextStyle(color: Color(0xFFFFFFFF))),
              trailing: Icon(Icons.mobile_screen_share, color: Colors.purple,),
              onTap: () async {final number = await openumber();
              if(number == null || number.isEmpty || number.length != 10)
                return;
              setState(() => this.number = number);
              },
            ),
            SizedBox(height: 20,),
            ListTile(
              tileColor: Color(0xFF9A5DD0),
              title: Text("CHANGE PASSWORD", style: TextStyle(color: Color(0xFFFFFFFF))),
              trailing: Image.network('https://s3-alpha-sig.figma.com/img/0aac/6fa8/1ec34deb283ced5b7c13e724dc7a5c71?Expires=1664150400&Signature=L3HxvWDyQFrV22HssxEqtZ6ARUlMAgIDce8UTHjOZRuv8XvqBPgs1jIfKHR4XOrqary8ulcrVi3-iO4J4Hw3LMmtU6i8JveODeXVfBsWyv1qvuRXJiGFRVcuzbrCj1eT4WxXIZLwWozlHNrM59fPdZoRgnkaEEtefbdpWZRTKf1svqsAH9q9BEKLH~TZFjlFM8eRRWKy3rCOEj9fHLEC1pRVzdiNcuX9LftIzmHmaOnQ79927z-AA-ibmOqZMwkOPvZFtARSc2IY-1ePAevnMBi81rtQia2xYUL4BiHPs8U6uDOKNicr0iWvtVMK5Re-KPN4pa9e-g2ftXioDzUTUw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              onTap: (){},
            ),
            SizedBox(height: 20,),
            ListTile(
              tileColor: Color(0xFF9A5DD0),
              title: Text("ORDER HISTORY", style: TextStyle(color: Color(0xFFFFFFFF))),
              trailing: Image.network('https://s3-alpha-sig.figma.com/img/4700/a94b/7a22991926a5662a959330b68fecb056?Expires=1664150400&Signature=RGdX073HGChicjjqj1~c-Oo3ORAG59rQeP5nSRttu4xx0VDllOb1mL8dq2JmYt291jw93r8GR9eMiyHFpvNtQMMVQ50LHjJkofuoTtddyYIFSve4Rj94TJH2wrncPl4X-mz~xWBPJjIFy9ixYzAB2VfQVi5piiGvaFzlUfiyAtt6AeOlWcnYxG5Y~vB0l7yzTMX77E0FssPu4IrOzLbHIg5gxIpqcU7pDqk0DxD44Os3j8y34UIbqACNg6HKH1uEX-qGg1Gl-5Zm2dt2rMwJKzKma9oR4Z6L-vX~T5HZCWCmDqYzj4ECRoq3iImeyQ5w~p6Aq6bdiG-RYRyIzPCO7Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              onTap: (){},
            ),
            SizedBox(height: 20,),
            ListTile(
              tileColor: Color(0xFF9A5DD0),
              title: Text("LOGOUT", style: TextStyle(color: Color(0xFFFFFFFF)),),
              trailing: Image.network('https://s3-alpha-sig.figma.com/img/d478/c19e/c4ecfe633e8667f3c37d96e24c42f024?Expires=1664150400&Signature=KTX757cSJzCYIWjz1jUMHbjxyfGDhOPZrAooPMPzpwj1RkxYFzSPg7vwy6qzoQbgrReb1Kenz1FPqhGrJwOrSpa9CTrkeTjVEVQsmFCunJNM5zpepJ94-t~AF6kUg9y5FoIcf4uiInbjk0MgvaSA6NNDvfP6jcPPY~KeHCr0~y1NDmjnfFB3j1iz-abhrQddRApde4HVGOTZodejiRSfgTpdF~8Lnr8V5Abyl0iI8ApHnwTscB6fi0JAFmUEcQU3CLFNW2E3ywWv35oyXbvnB4RPKWm6tlxVVIUw7D~4yNSE3NPXKwhs~fP2BQO-gmCx0U0H574xhNf9DoLYiwaPNw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              onTap: (){},
            ),
            SizedBox(height: 20,),
            ListTile(
              tileColor: Color(0xFF9A5DD0),
              title: Text("HELP", style: TextStyle(color: Color(0xFFFFFFFF)),),
              trailing: Image.network('https://s3-alpha-sig.figma.com/img/8131/faa7/997a6e600c153de9df8497daaaf042dc?Expires=1664150400&Signature=BO3c8BX1QxFsJP1nXnQ~-0DQqm5w8Qv4R818lUCTzSdcJHPWlLrLKOzh2B-lj00-oUqqQI4yA4~HOyjdx4QVi1g09wa~3b-R9x2SKpiobN9gqk-AnNveMisAjr3PtWp2-tsocszYwqUGFc5K~Lwt2U67fMEB2t07xNo5wrazIIwDxEbldz~x6djTJRelyFWZ2sUx53qUEeOI-CWiaW1lemPuVScHDqAT7EPiZXrvYH06A3cnK7DPAY1ZB9s6zvcsNh3fBTSWlMZJxXyQozP6bzFMY1HzhmTxSIQVVNk9sEMgYje89npuHK2qvOA-yRtY8rD233jPh6Io67TBIZaTTA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}