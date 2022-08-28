// ignore_for_file: camel_case_types, constant_identifier_names

import 'package:flutter/cupertino.dart';

class appconst {
  static const String Name = "Flutter Course";

  static double fullheight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double area(double a, double b) {
    return a * b;
  }

  static double fullwidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
