import 'package:dio/dio.dart';

class HttpClient {
  static Dio dio = new Dio();

  static get(String path, Map<String, dynamic> mapData) async {
    var response = await dio.get(path, data: mapData);
    return response.data.toString();
  }

  static post(String path, Map<String, dynamic> mapData) async {
    var response = await dio.post(path, data: mapData);
    return response.data.toString();
  }
}
