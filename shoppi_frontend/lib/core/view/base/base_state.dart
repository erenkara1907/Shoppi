import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get currentTheme => Theme.of(context);
  
  double dynamicHeight(double val) => MediaQuery.of(context).size.height * val;
  double dynamicWidth(double val) => MediaQuery.of(context).size.width * val;

  EdgeInsets insetsAll(double val) => EdgeInsets.all(dynamicHeight(val));
  EdgeInsets insetsHorizontal(double val) => EdgeInsets.symmetric(horizontal: dynamicHeight(val));
  EdgeInsets insetsVertical(double val) => EdgeInsets.symmetric(vertical: dynamicHeight(val));
}