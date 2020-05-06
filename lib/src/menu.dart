import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsearchapp/src/jobs.dart';

import 'applications.dart';
import 'profile.dart';
import 'utils/globals.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
                  margin: EdgeInsets.only(left: 15, right: 30, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.close, color: Colors.black),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.exchangeAlt, size: 20, color: Colors.red),
                          Container(
                            margin: EdgeInsets.only(left: mediaQuery(context, 0.04)),
                            child: Text(
                              'Switch Account',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: mediaQuery(context, 0.04),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: mediaQuery(context, 0.12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        textTitle('Jobs', Jobs()),
                        textTitle('Applications', Applications()),
                        textTitle('Profile', Profile()),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: mediaQuery(context, 0.5)),
                          width: mediaQuery(context, 0.47),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                  icon: FaIcon(FontAwesomeIcons.facebookF),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                              IconButton(
                                  icon: FaIcon(FontAwesomeIcons.twitter),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                              IconButton(
                                  icon: FaIcon(FontAwesomeIcons.instagram),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  textTitle(text, route){
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 30, top: mediaQuery(context, 0.09)),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: mediaQuery(context, 0.08),
              fontFamily: 'Gilroy-Heavy'),
        ),
      ),
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context) => route));
      },
    );
  }
}
