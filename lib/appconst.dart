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
