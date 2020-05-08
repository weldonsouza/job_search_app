import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsearchapp/src/utils/globals.dart';
import 'package:jobsearchapp/src/utils/hidden_ticks_and_labels_axis.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final saleDate1 = [new OrdinalSales('2014', 20),];
    final saleDate2 = [new OrdinalSales('2014', 40),];
    final saleDate3 = [new OrdinalSales('2014', 60),];
    final saleDate4 = [new OrdinalSales('2014', 20),];
    final saleDate5 = [new OrdinalSales('2014', 50),];
    final saleDate6 = [new OrdinalSales('2014', 20),];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: saleDate1,
        colorFn: (_, __) => charts.Color.fromHex(code: '#F5F5F5'),
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.Color.fromHex(code: '#F5F5F5'),
        data: saleDate2,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Mobile',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.Color.fromHex(code: '#F5F5F5'),
        data: saleDate3,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.Color.fromHex(code: '#F5F5F5'),
        data: saleDate4,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.Color.fromHex(code: '#F5F5F5'),
        data: saleDate5,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Mobile',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (_, __) => charts.Color.fromHex(code: '#F5F5F5'),
        data: saleDate6,
      ),
    ];
  }

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
                    margin: EdgeInsets.only(top: 15, right: 25),
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
                                    fontSize: mediaQuery(context, 0.04))),
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
                  Container(
                    width: mediaQuery(context, 1),
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: mediaQuery(context, 0.05), vertical: mediaQuery(context, 0.06)),
                    child: HiddenTicksAndLabelsAxis(_createSampleData())),
                  Text('Location', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: mediaQuery(context, 0.05))),
                  Container(
                    width: mediaQuery(context, 1),
                    height: mediaQuery(context, 0.15),
                    margin: EdgeInsets.only(right: mediaQuery(context, 0.1), left: mediaQuery(context, 0.1), top: mediaQuery(context, 0.07)),
                    child: Stack(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            cardJobsOffers(Colors.white, Colors.grey[200], Colors.black, 'Remote'),
                          ],
                        ),
                        cardJobsOffers(Colors.red[400], Colors.red[400], Colors.white, 'City'),
                      ],
                    ),
                  ),
                  Container(
                    width: mediaQuery(context, 1),
                    height: mediaQuery(context, 0.14),
                    margin: EdgeInsets.symmetric(horizontal: mediaQuery(context, 0.1)),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: BorderSide(color: Colors.grey[200], width: 1),
                      ),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('New York, NY', style: TextStyle(color: Colors.black, fontSize: mediaQuery(context, 0.035))),
                          Container(),
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
      width: mediaQuery(context, 0.43),
      height: mediaQuery(context, 0.14),
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
            Text(text, style: TextStyle(color: colorText, fontSize: mediaQuery(context, 0.035))),
          ],
        ),
      ),
    );
  }
}
