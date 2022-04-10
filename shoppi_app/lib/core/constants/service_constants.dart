part of '../service/base_service.dart';

// ignore_for_file: unused_element

class _ServiceConstants {
  static _ServiceConstants? _instance;
  static _ServiceConstants get instance {
    // ignore: prefer_conditional_assignment
    if (_instance == null) {
      _instance = _ServiceConstants._init();
    }
    _instance ??= _ServiceConstants._init();
    return _instance!;
  }

  _ServiceConstants._init();

  String get product => 'product';
  String get hello => 'hello';
}
