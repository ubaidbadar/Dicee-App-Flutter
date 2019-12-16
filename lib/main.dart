import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images.jfif'),
                  radius: 50,
                ),
                Text(
                  'ubaid badar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Pacifico'),
                ),
                Text('FLUTTER DEVELOPER', style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro', fontSize: 17, letterSpacing: 1.1),),
                SizedBox(
                  height: 20,
                  width: 170,
                  child: Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal,),
                    title: Text('+92 347 6262068', style: TextStyle(color: Colors.teal, fontFamily: 'SourceSansPro'),),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal,),
                    title: Text('m.ubaidbadar@gmail.com', style: TextStyle(color: Colors.teal, fontFamily: 'SourceSansPro'),),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
