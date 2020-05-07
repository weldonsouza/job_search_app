import 'package:flutter/material.dart';
import 'package:jobsearchapp/src/utils/globals.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
                        'Jobs',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: mediaQuery(context, 0.042),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.tune, color: Colors.black),
                          onPressed: () {})
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: mediaQuery(context, 0.04), bottom: mediaQuery(context, 0.02),
                            left: 3),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 1.5,
                                  height: mediaQuery(context, 0.06),
                                  color: Colors.grey[400],
                                  margin: EdgeInsets.only(left: mediaQuery(context, 0.07), right: mediaQuery(context, 0.025)),
                                ),
                                Text('Search', style: TextStyle(color: Colors.grey[400], fontSize: mediaQuery(context, 0.04))),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: EdgeInsets.only(left: mediaQuery(context, 0.07), bottom: mediaQuery(context, 0.06),
                                  top: mediaQuery(context, 0.06)),
                              child: Row(
                                children: <Widget>[
                                  cardJobsOffers(Colors.red[400], Colors.red[400], Colors.white, 'UI Designer'),
                                  cardJobsOffers(colorBase, Colors.grey, Colors.grey, 'Motion Designer'),
                                  cardJobsOffers(Colors.red[400], Colors.red[400], Colors.white, 'UX Designer'),
                                  cardJobsOffers(colorBase, Colors.grey, Colors.grey, 'Develop Mobile'),
                                ],
                              ),
                            ),
                          ),
                          cardJobs('assets/images/airbnb.png', 'Visual Designer', 'Airbnb Inc.', '06.05.2020', 50),
                          cardJobs('assets/images/apple_min.png', 'UX Designer Mobile', 'Apple', '05.05.2020', 45),
                          cardJobs('assets/images/citibank.png', 'Product Designer', 'Citibank', '03.05.2020', 60),
                          cardJobs('assets/images/google_min.png', 'Visual Designer', 'Google', '30.04.2020', 55),
                          cardJobs('assets/images/nubank.png', 'UX Designer Mobile', 'Nubank', '22.04.2020', 45),
                          cardJobs('assets/images/uber.png', 'Product Designer', 'Uber', '20.04.2020', 60),
                        ],
                      ),
                    )
                ),
              ],
            ),
          )),
    );
  }

  cardJobsOffers(colorCard, colorBorder, colorText, text){
    return Container(
      width: mediaQuery(context, 0.32),
      height: mediaQuery(context, 0.13),
      margin: EdgeInsets.only(right: mediaQuery(context, 0.02)),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
          side: BorderSide(color: colorBorder, width: 1),
        ),
        color: colorCard,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(text, style: TextStyle(color: colorText, fontSize: mediaQuery(context, 0.027))),
          ],
        ),
      ),
    );
  }

  cardJobs(image, title, subtitle, date, price){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        child: Container(
          padding: EdgeInsets.only(left: mediaQuery(context, 0.03), top: mediaQuery(context, 0.03),
              bottom: mediaQuery(context, 0.03)),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        margin: EdgeInsets.only(left: 15),
                        color: Colors.grey[100],
                        child: Container(
                          alignment: Alignment.center,
                          width: mediaQuery(context, 0.1),
                          height: mediaQuery(context, 0.1),
                          child: Image.asset(image, scale: 5.5),
                        ),
                      ),
                      SizedBox(width: mediaQuery(context, 0.05)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title, style: TextStyle(color: Colors.black, fontSize: mediaQuery(context, 0.035), fontWeight: FontWeight.bold)),
                          SizedBox(height: mediaQuery(context, 0.015)),
                          Text(subtitle,
                              style: TextStyle(color: Colors.grey[600], fontSize: mediaQuery(context, 0.03))),
                        ],
                      ),
                    ],
                  ),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
                ],
              ),
              SizedBox(height: mediaQuery(context, 0.02)),
              Container(
                margin: EdgeInsets.only(left: 10, right: mediaQuery(context, 0.15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      color: Colors.grey[100],
                      child: Container(
                        width: mediaQuery(context, 0.32),
                        height: mediaQuery(context, 0.08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(MdiIcons.calendarBlankOutline, color: Colors.black, size: mediaQuery(context, 0.04)),
                            SizedBox(width: mediaQuery(context, 0.03)),
                            Text(date, style: TextStyle(fontSize: mediaQuery(context, 0.028),
                                fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Text('\$$price/h', style: TextStyle(fontSize: mediaQuery(context, 0.05))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
