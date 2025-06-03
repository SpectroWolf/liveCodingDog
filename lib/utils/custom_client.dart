import 'dart:developer';

import 'package:dio/dio.dart';

import 'constants.dart';

class CustomHttp {
  final Dio client;

  CustomHttp()
    : client = Dio(
        BaseOptions(
          baseUrl: ServiceInfo.baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      ) {
    client.interceptors.add(CustomInterceptor());
  }
}

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    log('REQUEST[${options.method}] => API: ${options.baseUrl}${options.path}');
    log('BODY => ${options.data}');

    log('REQUEST[${options.method}] => API: ${options.baseUrl}${options.path}');
    log('BODY => ${options.data}');

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(
      'RESPONSE[${response.statusCode}] => API: ${response.requestOptions.baseUrl}${response.requestOptions.path}',
    );
    log('REQUEST BODY => ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log(
      'RESPONSE[${err.response?.statusCode}] => API: ${err.requestOptions.baseUrl}${err.requestOptions.path}${err.requestOptions.data}',
    );
    return super.onError(err, handler);
  }
}
