import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      body: Column(

        children:<Widget> [
          Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Text('SIgn In',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Please enter username",
                  labelText: "Username:",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
              ),

          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Please enter password",
                labelText: "Password:",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              obscureText: true
            ),

          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()),
              );
            },
              child: Text('Login',
                style: TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            ),
          ),

        ],

      ),

    );
  }
}