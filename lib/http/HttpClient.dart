import 'package:dio/dio.dart';

class HttpClient {
  static Options options = new Options(
    baseUrl: "http://192.168.1.66:88",
    connectTimeout: 5000,
    receiveTimeout: 3000,
    responseType: ResponseType.PLAIN,
  );
  static Dio dio = new Dio(options);

  static get(String path, Map<String, dynamic> mapData) async {
    var response = await dio.get(path, data: mapData);
    return response.data.toString();
  }

  static Future post(String path, Map<String, dynamic> mapData) async {
    Response response;
    try {
      response = await dio.post(path, data: mapData);
      return response.data.toString();
    } on DioError catch (e) {
      if (e.response == null) {
        if (e.type == DioErrorType.CONNECT_TIMEOUT) {
          return '''{"code": 500}''';
        }
      }
    }
  }
}
