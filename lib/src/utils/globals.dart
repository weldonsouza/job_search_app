library my_prj.globals;

import 'package:flutter/material.dart';

String app = 'Job Search App';

var colorBase = Color(0xFFf6f6f7);

mediaQuery(BuildContext context, double value) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  Size size = mediaQuery.size;

  var result = size.width * value;
  return result;
}