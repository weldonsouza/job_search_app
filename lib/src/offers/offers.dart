import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsearchapp/src/utils/globals.dart';

class Offerts extends StatefulWidget {
  String company, icon, job, city, time;
  int price;

  Offerts(this.company, this.icon, this.job, this.city, this.time, this.price);

  @override
  _OffertsState createState() => _OffertsState();
}

class _OffertsState extends State<Offerts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBase,
      child: Scaffold(
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        widget.company,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: mediaQuery(context, 0.042),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.tune, color: Colors.transparent),
                          onPressed: () {})
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0))),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            color: colorBase,
                            width: mediaQuery(context, 0.15),
                            height: 5,
                            margin: EdgeInsets.only(top: mediaQuery(context, 0.04), bottom: mediaQuery(context, 0.085)),
                          ),
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                        ),
                        Image.asset(widget.icon, scale: 7.5),
                        Container(
                          margin: EdgeInsets.only(top: mediaQuery(context, 0.085), bottom: mediaQuery(context, 0.03)),
                          child: Text(
                            widget.job,
                            style: TextStyle(color: Colors.black, fontSize: mediaQuery(context, 0.075)),
                          ),
                        ),
                        Text(
                          widget.city,
                          style: TextStyle(color: Colors.grey, fontSize: mediaQuery(context, 0.035)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: mediaQuery(context, 0.04), bottom: mediaQuery(context, 0.035)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              cardType(widget.time),
                              SizedBox(width: mediaQuery(context, 0.1)),
                              Text(
                                '\$${widget.price}/h',
                                style: TextStyle(color: Colors.black, fontSize: mediaQuery(context, 0.07)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: mediaQuery(context, 0.1), right: mediaQuery(context, 0.1),
                              top: mediaQuery(context, 0.05)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Requeriments',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.035)),
                              ),
                              textDescription('Exceptional communication skills and team-working skills'),
                              textDescription('Know the principles of animation and you can create high fidelity prototypes'),
                              textDescription('Direct experience using Adobe Premiere, Adobe After Effects & outher used to create videos,'
                                  'animations, etc.\n- Good UI/UX knowledge'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: mediaQuery(context, 0.1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(),
                              IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                              Container(
                                width: mediaQuery(context, 0.6),
                                height: mediaQuery(context, 0.13),
                                child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('Apply Now', style: TextStyle(
                                        color: Colors.white,
                                        fontSize: mediaQuery(context, 0.03))),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: mediaQuery(context, 0.05)),
                      ],
                    ))
              ],
            ),
          )),
    );
  }

  cardType(text){
    return Container(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        color: colorBase,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(text, style: TextStyle(fontSize: mediaQuery(context, 0.035),
                  fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  textDescription(text){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: mediaQuery(context, 0.03)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('•', style: TextStyle(color: Colors.grey, fontSize: mediaQuery(context, 0.05))),
          SizedBox(width: 20),
          Flexible(
            child: Text(
              text,
              style: TextStyle(color: Colors.grey, fontSize: mediaQuery(context, 0.033)),
            ),
          ),
        ],
      ),
    );
  }
}
//'\u{2022}'
