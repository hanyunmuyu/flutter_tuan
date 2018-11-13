import 'package:flutter_tuan/http/HttpClient.dart';
import 'package:redux/redux.dart';

class CommunityListService {
  static Future getCommunityList(Store store, [int page = 1]) async {
    String token;
    if (store.state.user != null) {
      token = store.state.user.data['api_token'];
    }
    print(token);
    return HttpClient.get(
        '/api/v1/community', {"page": page, "api_token": token});
  }
}
