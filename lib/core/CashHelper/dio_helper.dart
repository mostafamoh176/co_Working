import 'package:dio/dio.dart';
import 'package:mat3m/constant/constant.dart';

class DioHelper {
  static Dio dio = Dio()..options.validateStatus = (v) => v! < 500;

  static Future<Response<dynamic>> post(String path,{dynamic Date}) async =>
      await dio.post(BASE_URL + path + "?key=" + API_KEY, data: Date);
}