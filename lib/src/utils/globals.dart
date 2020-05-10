library my_prj.globals;

import 'package:flutter/material.dart';

String app = 'Job Search App';

var colorBase = Color(0xFFf6f6f6);
var colorSecondary = Color(0xFFff4343);

mediaQuery(BuildContext context, double value) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  Size size = mediaQuery.size;

  var result = size.width * value;
  return result;
}