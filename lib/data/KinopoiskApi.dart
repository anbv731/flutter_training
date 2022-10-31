import 'package:dio/dio.dart';

import 'DioSettings.dart';

class KinopoiskApi{
  late DioSettings _dioSettings;
  late Dio _dio;
  KinopoiskApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }
}