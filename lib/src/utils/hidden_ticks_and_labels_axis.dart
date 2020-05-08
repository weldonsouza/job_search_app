import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HiddenTicksAndLabelsAxis extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  HiddenTicksAndLabelsAxis(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      primaryMeasureAxis:
      new charts.NumericAxisSpec(renderSpec: new charts.NoneRenderSpec()),
      domainAxis: new charts.OrdinalAxisSpec(
          showAxisLine: true,
          renderSpec: new charts.NoneRenderSpec()),
    );
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}