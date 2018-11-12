import 'package:flutter_tuan/http/HttpClient.dart';

class SchoolService {
  static Future getSchoolList([int page = 1]) async {
    return HttpClient.get('/api/v1/school', {"page": page});
  }
}
