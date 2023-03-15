import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:movies/base/parameter_interceptor.dart';
import 'package:movies/di/modules/movie_module.dart';

import '../base/credentials.dart';

GetIt locator = GetIt.instance;

void injectModules() {
  BaseOptions options = BaseOptions(
      baseUrl: Credentials.baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      followRedirects: false);

  Logger logger = Logger(printer: PrettyPrinter(colors: true));

  Dio dio = Dio(options);
  dio.interceptors.add(ParameterInterceptor(logger));

  locator.registerSingleton(dio);
  injectMovieModule();
}
