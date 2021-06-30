import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_drawer.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Welcome(),
));

class Welcome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      drawer: Drawer(
        child: Text('Hello'),
      ),
      backgroundColor:Colors.amber[200],

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
            child: Text('Travel and Tour',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),


        ],

      ),

    );
  }
}