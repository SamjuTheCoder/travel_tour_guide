import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
import 'login.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class Register extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      body: Column(

        children:<Widget> [
          Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Text('SIgn Up',
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
                hintText: "Please enter fullname",
                labelText: "Fullname:",
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
                  hintText: "Please enter email",
                  labelText: "Email:",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: TextField(
                decoration: InputDecoration(
                  hintText: "Please enter phone",
                  labelText: "Phone:",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
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
            child: FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),
              );
            },
              child: Text('Register',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ],

      ),

    );
  }
}