import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

void errorHandler(dynamic error) {
  if (error is DioError) {
    DioError dioError = error;
    switch (dioError.type) {
      case DioErrorType.badResponse:
        var error = dioError.response?.data;
        var errorMessages = (error['errors'] as List<dynamic>)
            .map((e) => e.toString())
            .toList();
        throw ApiException(errorMessages.first);
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw TimeoutException('Terjadi Kesalahan, Silahkan dicoba kembali')
                .message ??
            'Terjadi Kesalahan, Silahkan dicoba kembali';
      default:
        if (dioError.error is SocketException) {
          throw const SocketException(
                  'Terjadi Kesalahan, pastikan internet anda aktif')
              .message;
        } else if (dioError.error is FormatException) {
          throw const FormatException("Unable to process the data").message;
        } else {
          throw ApiException('Terjadi Kesalahan').message;
        }
    }
  } else {
    throw ApiException('Terjadi Kesalahan').message;
  }
}

class ApiException implements Exception {
  final String message;

  ApiException(this.message);
}
