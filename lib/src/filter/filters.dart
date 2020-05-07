import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsearchapp/src/utils/globals.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Padding(
          padding: EdgeInsets.only(top: mediaQuery(context, 0.25)),
          child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 25),
                    alignment: Alignment.bottomRight,
                    child: IconButton(icon: Icon(Icons.close), onPressed: (){
                      Navigator.of(context).pop();
                    })),
                  Text(
                    'Filters',
                    style: TextStyle(color: Colors.black, fontSize: mediaQuery(context, 0.075)),
                  ),
                  Container(
                    width: mediaQuery(context, 1),
                    height: mediaQuery(context, 0.15),
                    margin: EdgeInsets.symmetric(horizontal: mediaQuery(context, 0.1), vertical: mediaQuery(context, 0.07)),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      color: Colors.grey[100],
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('Sort by', style: TextStyle(color: Colors.black, fontSize: mediaQuery(context, 0.04))),
                            Row(
                              children: <Widget>[
                                Text('\$ > \$\$\$', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: mediaQuery(context, 0.035))),
                                SizedBox(width: 5),
                                IconButton(icon: Icon(Icons.keyboard_arrow_down, color: Colors.black), onPressed: (){})
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text('Price', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.05))),
                  Text('Location', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.05))),
                  Container(
                    width: mediaQuery(context, 1),
                    height: mediaQuery(context, 0.15),
                    margin: EdgeInsets.only(right: mediaQuery(context, 0.1), left: mediaQuery(context, 0.1), top: mediaQuery(context, 0.07)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        cardJobsOffers(Colors.red[400], Colors.red[400], Colors.white, 'City'),
                        cardJobsOffers(Colors.white, Colors.grey[200], Colors.black, 'Remote'),
                      ],
                    ),
                  ),
                  Container(
                    width: mediaQuery(context, 1),
                    height: mediaQuery(context, 0.13),
                    margin: EdgeInsets.symmetric(horizontal: mediaQuery(context, 0.1)),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: BorderSide(color: Colors.grey[200], width: 1),
                      ),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('New York, NY', style: TextStyle(color: Colors.black, fontSize: mediaQuery(context, 0.04))),
                          Icon(Icons.my_location, color: Colors.red)
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }

  cardJobsOffers(colorCard, colorBorder, colorText, text){
    return Container(
      width: mediaQuery(context, 0.4),
      height: mediaQuery(context, 0.13),
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
            Text(text, style: TextStyle(color: colorText, fontSize: mediaQuery(context, 0.04))),
          ],
        ),
      ),
    );
  }
}
