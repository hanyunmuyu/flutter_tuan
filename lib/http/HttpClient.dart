import 'package:dio/dio.dart';

class HttpClient {
  static get(String path, Map<String, dynamic> mapData) async {
    Options options = new Options(
      baseUrl: "http://192.168.1.66:88",
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    Dio dio = new Dio(options);
    var response = await dio.get(path, data: mapData);
    return response.data.toString();
  }

  static post(String path, Map<String, dynamic> mapData) async {
    Options options = new Options(
      baseUrl: "http://192.168.1.66:88",
      connectTimeout: 5000,
      receiveTimeout: 10000,
      responseType: ResponseType.PLAIN,
    );
    Dio dio = new Dio(options);
    Response response;

    response = await dio.post(path, data: mapData);
    return response.data.toString();
  }
}
