import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/home.dart';
import 'src/utils/globals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set portrait orientation
    SystemChrome.setPreferredOrientations ([
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(accentColor: colorBase),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}