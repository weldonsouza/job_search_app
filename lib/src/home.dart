import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsearchapp/src/filter/filters.dart';
import 'package:jobsearchapp/src/menu_lateral/menu.dart';

import 'offers/offers.dart';
import 'utils/custom/custom_icons.dart';
import 'utils/globals.dart';
import 'utils/slide_route.dart';

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
                              CustomIcons.menu,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(context, CupertinoPageRoute(builder: (context) => Menu()));
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.search, color: Colors.black),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.tune, color: Colors.black),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Filters();
                                  },
                                );
                              })
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.only(left: 30),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 30, top: mediaQuery(context, 0.038)),
                            child: Text(
                              'Designer \nJobs',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.bold,
                                  fontSize: mediaQuery(context, 0.085)
                              )
                            ),
                          ),
                          SizedBox(height: mediaQuery(context, 0.057)),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: EdgeInsets.only(left: mediaQuery(context, 0.06)),
                              child: Row(
                                children: <Widget>[
                                  cardFilter('New York'),
                                  cardFilter('\$ 30 - 50h'),
                                ],
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: mediaQuery(context, 0.06), top: mediaQuery(context, 0.07), bottom: mediaQuery(context, 0.03)),
                              child: Text('For you', style: TextStyle(fontSize: mediaQuery(context, 0.039), fontFamily: 'Gilroy', fontWeight: FontWeight.bold))),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: EdgeInsets.only(left: mediaQuery(context, 0.06)),
                              child: Row(
                                children: <Widget>[
                                  cardForYou(Colors.black, Color(0xff1d1d1d), Colors.white,
                                      'assets/images/uber_min.png', 'Full time', 'UI / UX Designer', 45),
                                  cardForYou(Colors.white, Colors.grey[100], Colors.black,
                                      'assets/images/airbnb.png', 'Part time', 'UI / UX Designer', 40),
                                  cardForYou(Colors.white, Colors.grey[100], Colors.black,
                                      'assets/images/apple.png', 'Full time', 'UI', 50),
                                  cardForYou(Colors.white, Colors.grey[100], Colors.black,
                                      'assets/images/citibank.png', 'Part time', 'UX Designer Mobile', 30),
                                  cardForYou(Colors.white, Colors.grey[100], Colors.black,
                                      'assets/images/google.png', 'Part time', 'Develop', 40),
                                  cardForYou(Colors.white, Colors.grey[100], Colors.black,
                                      'assets/images/nubank.png', 'Full time', 'UX Designer', 60),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: mediaQuery(context, 0.06)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: mediaQuery(context, 0.05)),
                                Text('Recently Added',
                                    style: TextStyle(fontSize: mediaQuery(context, 0.039), fontFamily: 'Gilroy', fontWeight: FontWeight.bold)),
                                SizedBox(height: mediaQuery(context, 0.03)),
                                Container(
                                  margin: EdgeInsets.only(right: 30),
                                  child: Column(
                                    children: <Widget>[
                                      cardRecent('assets/images/airbnb.png', 'Visual Designer', 'Airbnb Inc.', 50),
                                      cardRecent('assets/images/apple.png', 'UX Designer Mobile', 'Apple', 45),
                                      cardRecent('assets/images/citibank.png', 'Product Designer', 'Citibank', 60),
                                      cardRecent('assets/images/google.png', 'Visual Designer', 'Google', 55),
                                      cardRecent('assets/images/nubank.png', 'UX Designer Mobile', 'Nubank', 45),
                                      cardRecent('assets/images/uber.png', 'Product Designer', 'Uber', 60),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  cardFilter(text){
    return Container(
      margin: EdgeInsets.only(right: mediaQuery(context, 0.02)),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(text, style: TextStyle(fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.027))),
              SizedBox(width: mediaQuery(context, 0.02)),
              Icon(Icons.clear, color: Colors.black, size: mediaQuery(context, 0.04)),
            ],
          ),
        ),
      ),
    );
  }

  cardForYou(colorCard, colorInlandCard, colorCardText, image, textCardTwo, description, price){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(mediaQuery(context, 0.01)),
        child: Card(
          elevation: 0,
          margin: EdgeInsets.only(bottom: mediaQuery(context, 0.03)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          color: colorCard,
          child: Container(
            padding: EdgeInsets.all(mediaQuery(context, 0.04)),
            width: mediaQuery(context, 0.43),
            height: mediaQuery(context, 0.43),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      color: colorInlandCard,
                      child: Container(
                        alignment: Alignment.center,
                        width: mediaQuery(context, 0.11),
                        height: mediaQuery(context, 0.11),
                        child: Image.asset(image, scale: 10),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      color: colorInlandCard,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(textCardTwo, style: TextStyle(
                                color: colorCardText,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
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
                  child: Text(description, style: TextStyle(
                      fontSize: mediaQuery(context, 0.03),
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                      color: colorCardText)),
                ),
                Container(
                  padding: EdgeInsets.only(top: mediaQuery(context, 0.02),
                      left: mediaQuery(context, 0.015)),
                  child: Text('\$$price/h', style: TextStyle(
                      fontSize: mediaQuery(context, 0.035),
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                      color: colorCardText)),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: (){
        if(image.contains('uber')){
          Navigator.push(context, SlideRoute(pageRoute: Offers('Uber', 'assets/images/uber.png', description,
              'New York, NY', textCardTwo, price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('airbnb')){
          Navigator.push(context, SlideRoute(pageRoute: Offers('Airbnb', image, description, 'New York, NY',
              textCardTwo, price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('apple')){
          Navigator.push(context, SlideRoute(pageRoute: Offers('Apple', image, description, 'New York, NY',
              textCardTwo, price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('citibank')){
          Navigator.push(context, SlideRoute(pageRoute: Offers('Citibank', image, description, 'New York, NY',
              textCardTwo, price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('google')){
          Navigator.push(context, SlideRoute(pageRoute: Offers('Google', image, description, 'New York, NY',
              textCardTwo, price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('nubank')){
          Navigator.push(context, SlideRoute(pageRoute: Offers('Nubank', image, description, 'New York, NY',
              textCardTwo, price), directionHorizontal: 0, directionVertical: 1));
        }
      },
    );
  }

  cardRecent(image, title, subtitle, price){
    return GestureDetector(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        child: Container(
          padding: EdgeInsets.only(left: mediaQuery(context, 0.03), right: mediaQuery(context, 0.06), top: mediaQuery(context, 0.03),
              bottom: mediaQuery(context, 0.03)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    //color: Color(0xff1d1d1d),
                    child: Container(
                      alignment: Alignment.center,
                      width: mediaQuery(context, 0.09),
                      height: mediaQuery(context, 0.09),
                      child: Image.asset(image),
                    ),
                  ),
                  SizedBox(width: mediaQuery(context, 0.03)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title, style: TextStyle(color: Colors.black, fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.035))),
                      SizedBox(height: mediaQuery(context, 0.015)),
                      Text(subtitle,
                          style: TextStyle(color: Colors.grey[600], fontFamily: 'Gilroy', fontSize: mediaQuery(context, 0.03))),
                    ],
                  ),
                ],
              ),
              Text('\$$price/h',
                  style: TextStyle(fontFamily: 'Gilroy', fontSize: mediaQuery(context, 0.035))),
            ],
          ),
        ),
      ),
      onTap: (){
        if(image.contains('uber')){
          Navigator.push(context, SlideRoute(pageRoute: Offers(subtitle, image, title, 'New York, NY',
              'Full time', price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('airbnb')){
          Navigator.push(context, SlideRoute(pageRoute: Offers(subtitle, image, title, 'New York, NY',
              'Part time', price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('apple')){
          Navigator.push(context, SlideRoute(pageRoute: Offers(subtitle, image, title, 'New York, NY',
              'Full time', price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('citibank')){
          Navigator.push(context, SlideRoute(pageRoute: Offers(subtitle, image, title, 'New York, NY',
              'Part time', price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('google')){
          Navigator.push(context, SlideRoute(pageRoute: Offers(subtitle, image, title, 'New York, NY',
              'Part time', price), directionHorizontal: 0, directionVertical: 1));
        } else if(image.contains('nubank')){
          Navigator.push(context, SlideRoute(pageRoute: Offers(subtitle, image, title, 'New York, NY',
              'Full time', price), directionHorizontal: 0, directionVertical: 1));
        }
      },
    );
  }
}
