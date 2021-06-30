import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget> [
                Container(
                  width: 100,
                    height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/file.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
