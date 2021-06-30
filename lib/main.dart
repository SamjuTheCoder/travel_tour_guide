import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
import 'login.dart';
import 'register.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travellers Tour Guide'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      backgroundColor:Colors.red[50],

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
            child: Text('Travel and Tour Guide',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.asset('images/file.jpg')
          ),

        ],

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()),
          );
        },
        child: Text('+'),
        tooltip: "Sign Up",
        backgroundColor: Colors.red[600],
      ),
    );
  }
}