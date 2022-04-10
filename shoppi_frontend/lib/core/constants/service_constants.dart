
   
part of '../service/base_service.dart';

class _ServiceConstants {
  static _ServiceConstants? _instance;

  static _ServiceConstants get instance {
    _instance ??= _ServiceConstants._init();
    return _instance!;
  }

  _ServiceConstants._init();

  String get product => "product";
  String get hello => "hello";
}