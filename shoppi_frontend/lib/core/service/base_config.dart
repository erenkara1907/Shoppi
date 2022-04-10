import 'dart:io';

import 'package:dio/dio.dart';

class BaseConfig {
  Dio? dio;
  String? baseUrl;

  BaseConfig(){
    if (Platform.isIOS) {
      baseUrl = 'http://localhost:4000/';
    }else {
      baseUrl = 'http://10.0.2.2:4000/';
    }

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl!,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      contentType: ContentType.json.value,
    );

    dio = Dio(options);

    dio!.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler){
        return handler.next(options);
      },
      onResponse: (response, handler){
        return handler.next(response);
      },
      onError: (DioError e, handler){
        return handler.next(e);
      }
    ));
  }
}