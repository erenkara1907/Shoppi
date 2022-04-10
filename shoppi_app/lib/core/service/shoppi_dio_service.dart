import 'dart:convert';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:shoppi_app/core/model/base_model.dart';
import 'package:shoppi_app/features/shop/model/product.dart';

enum MethodType { GET, POST }

class ShoppiDioService with DioMixin implements Dio {
  static ShoppiDioService? _instance;
  String? baseUrl;
  static ShoppiDioService get instance {
    _instance ??= ShoppiDioService._init();
    return _instance!;
  }

  ShoppiDioService._init() {
    if (Platform.isIOS) {
      baseUrl = "http://localhost:4000/";
    } else {
      baseUrl = "http://10.0.2.2:4000/";
    }
    options = BaseOptions(
      baseUrl: baseUrl!,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    httpClientAdapter = DefaultHttpClientAdapter();
    interceptors.add(LogInterceptor(responseBody: true));
  }

  Future make<T extends BaseModel>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required T parserModel,
    dynamic data,
    required MethodType method,
    ProgressCallback? onReceiveProgress,
  }) async {
    final options = Options();
    options.method = getMethodType(method);
    final body = getBodyModel(data);

    try {
      Response response = await request(path, data: body, options: options);
      return parseBody<T>(response.data, parserModel);
    } catch (e) {
      return onError(e.toString());
    }
  }

  String getMethodType(MethodType type) {
    switch (type) {
      case MethodType.GET:
        return 'GET';
      case MethodType.POST:
        return 'POST';
      default:
        // ignore: null_check_always_fails
        return null!;
    }
  }

  dynamic getBodyModel(dynamic data) {
    if (data == null) {
      return data;
    } else if (data is BaseModel) {
      return data.toJson();
    } else {
      return jsonEncode(data);
    }
  }

  dynamic parseBody<T extends BaseModel>(dynamic responseBody, T model) {
    try {
      // ignore: deprecated_member_use
      clear();


      if (responseBody is List) {
        return responseBody
            .map((data) => model.fromJson(data))
            .cast<T>()
            .toList();
      } else if (responseBody is Map) {

        return model.fromJson(responseBody) as T;
      } else {
        return responseBody;
      }
    } catch (e) {
      return responseBody;
    }
  }

  onError(String error) {
    return 'Error';
  }
}
