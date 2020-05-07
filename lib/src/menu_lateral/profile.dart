import 'package:flutter/material.dart';
import 'package:jobsearchapp/src/utils/globals.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBase,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        child: Material(
                          textStyle: TextStyle(color: Colors.black, fontSize: 20),
                          shadowColor: Colors.transparent,
                          color: Colors.transparent,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: mediaQuery(context, 0.042),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.search, color: Colors.transparent),
                          onPressed: () {})
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
