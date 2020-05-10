import 'package:flutter/material.dart';
import 'package:jobsearchapp/src/utils/globals.dart';

class Applications extends StatefulWidget {
  @override
  _ApplicationsState createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
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
                        'Applications',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          fontSize: mediaQuery(context, 0.042),
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.tune, color: Colors.transparent),
                          onPressed: () {})
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 30, top: mediaQuery(context, 0.07), bottom: mediaQuery(context, 0.12)),
                                child: Text(
                                    'Your \napplications',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.bold,
                                        fontSize: mediaQuery(context, 0.087)
                                    )
                                ),
                              ),
                              cardJobs('assets/images/airbnb.png', 'Visual Designer', 'Airbnb Inc.', 'Delivered',
                                  Colors.black, Colors.grey[100], 50),
                              cardJobs('assets/images/apple_min.png', 'UX Designer Mobile', 'Apple', 'Opened',
                                  Colors.green, Colors.green[50], 45),
                              cardJobs('assets/images/citibank.png', 'Product Designer', 'Citibank', 'Cancelied',
                                  colorSecondary, Colors.red[50], 60),
                              cardJobs('assets/images/google_min.png', 'Visual Designer', 'Google', 'Opened',
                                  Colors.green, Colors.green[50], 55),
                              cardJobs('assets/images/nubank.png', 'UX Designer Mobile', 'Nubank', 'Delivered',
                                  Colors.black, Colors.grey[100], 45),
                              cardJobs('assets/images/uber.png', 'Product Designer', 'Uber', 'Cancelied',
                                  colorSecondary, Colors.red[50], 60),
                            ],
                          ),
                        )
                    )
                ),
              ],
            ),
          )),
    );
  }

  cardJobs(image, title, subtitle, text, colorText, colorCard, price){
    return GestureDetector(
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
                          Text(title, style: TextStyle(color: Colors.black,  fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.035))),
                          SizedBox(height: mediaQuery(context, 0.015)),
                          Text(subtitle, style: TextStyle(color: Colors.grey[600],  fontFamily: 'Gilroy', fontSize: mediaQuery(context, 0.03))),
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
                      color: colorCard,
                      child: Container(
                        width: mediaQuery(context, 0.34),
                        height: mediaQuery(context, 0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                                text,
                                style: TextStyle(color: colorText, fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.03))),
                          ],
                        ),
                      ),
                    ),
                    Text('\$$price/h', style: TextStyle(fontFamily: 'Gilroy', fontSize: mediaQuery(context, 0.05))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onTap: (){},
    );
  }
}
