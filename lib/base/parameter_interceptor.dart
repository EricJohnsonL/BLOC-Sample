import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'credentials.dart';

class ParameterInterceptor extends Interceptor {
  final Logger _logger;

  ParameterInterceptor(this._logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Map<String, String> queryParameters = {
      'api_key': Credentials.apiKey,
      'language': 'en-US',
    };
    options.queryParameters.addAll(queryParameters);

    _logger.d(
        "--> ${options.method} ${options.baseUrl}${options.path}\nQuery: ${options.queryParameters}\nContent type: ${options.contentType}\nHeaders: ${options.headers}\nRequest Body: ${options.data}\n<-- END HTTP");

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    _logger.i(
        '--> Response Code: ${response.statusCode} ${response.requestOptions.method} ${response.requestOptions.baseUrl}${response.requestOptions.path}\nQuery: ${response.requestOptions.queryParameters}\nHeaders: ${response.headers}Response Body: ${json.encode(response.data)}\n<-- END HTTP');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _logger.e(
        '<-- Error -->\nStatus: ${err.error}\nResponse: ${err.response}\n<-- End Error -->');
    super.onError(err, handler);
  }
}
