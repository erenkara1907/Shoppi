// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppConstants {
  // ignore: prefer_final_fields
  static AppConstants? _instance = AppConstants._init();
  static AppConstants get instance => _instance!;
  AppConstants._init();

  static const double FREE_DELIVERY_MONEY = 40;
  static const String S_ID = 'sId';
  static const String SOCKET_URL = 'http://localhost:4000';
  static const String SOCKET_CHANNEL = 'product';
  static const String SOCKET_CHANNEL_DELIVERY = 'product-delivery';

  // ignore: prefer_const_constructors
  var silverGridDelegateWithFixedCrossAxisCount = SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10.0,
    childAspectRatio: 1 / 2,
    crossAxisSpacing: 10.0,
  );
}
