import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils/custom/custom_icons.dart';
import 'utils/globals.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBase,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          child: Material(
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 20),
                            shadowColor: Colors.transparent,
                            color: Colors.transparent,
                            child: IconButton(
                              icon: Icon(
                                CustomIcons.menu,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.search, color: Colors.black),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.filter_list,
                                    color: Colors.black),
                                onPressed: () {})
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 30),
                    child: Column(children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Designer \nJobs',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: mediaQuery(context, 0.09),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('New York', style: TextStyle(fontSize: mediaQuery(context, 0.027),
                                          fontWeight: FontWeight.bold)),
                                      SizedBox(width: mediaQuery(context, 0.02)),
                                      Icon(Icons.clear, color: Colors.black, size: mediaQuery(context, 0.04)),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: mediaQuery(context, 0.02)),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('\$ 30 - 50h', style: TextStyle(fontSize: mediaQuery(context, 0.027), fontWeight: FontWeight.bold)),
                                      SizedBox(width: mediaQuery(context, 0.02)),
                                      Icon(Icons.clear, color: Colors.black, size: mediaQuery(context, 0.04)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: mediaQuery(context, 0.07), bottom: mediaQuery(context, 0.03)),
                            child: Text('For you', style: TextStyle(fontSize: mediaQuery(context, 0.04), fontWeight: FontWeight.bold))),
                          Row(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                color: Colors.black,
                                child: Container(
                                  padding: EdgeInsets.all(mediaQuery(context, 0.041)),
                                  width: mediaQuery(context, 0.43),
                                  height: mediaQuery(context, 0.43),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(7),
                                            ),
                                            color: Color(0xff1d1d1d),
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: mediaQuery(context, 0.11),
                                              height: mediaQuery(context, 0.11),
                                              child: Text('Uber', style: TextStyle(
                                                  fontSize: mediaQuery(context, 0.03),
                                                  color: Colors.white)),
                                            ),
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(7),
                                            ),
                                            color: Color(0xff1d1d1d),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Text('Full time', style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: mediaQuery(context, 0.027))),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: mediaQuery(context, 0.09),
                                            left: mediaQuery(context, 0.015)),
                                        child: Text('UI / UX Designer', style: TextStyle(
                                            fontSize: mediaQuery(context, 0.03),
                                            color: Colors.white)),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: mediaQuery(context, 0.02),
                                            left: mediaQuery(context, 0.015)),
                                        child: Text('\$45/h', style: TextStyle(
                                            fontSize: mediaQuery(context, 0.035),
                                            color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Text('Recently Added', style: TextStyle(fontSize: mediaQuery(context, 0.04), fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
