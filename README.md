# flutter_tuan

高校社团

## Getting Started

效果图

![高校列表效果图](https://github.com/hanyunmuyu/flutter_tuan/blob/master/img/school.png)

![个人中心](https://github.com/hanyunmuyu/flutter_tuan/blob/master/img/usercenter.png)


[API地址](https://github.com/hanyunmuyu/tuan.git)

配置说明

修改API的地址
```
import 'package:dio/dio.dart';

class HttpClient {
  static Options options = new Options(
    baseUrl: "http://192.168.1.66:88", 这里配置了你的API地址
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


```


For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

[时间选择控件](https://pub.dartlang.org/packages/flutter_cupertino_date_picker)

[模态底部面板](https://blog.csdn.net/hekaiyou/article/details/60782951)

[网络请求](https://pub.dartlang.org/packages/dio#-readme-tab-)

[redux](https://pub.dartlang.org/packages/flutter_redux#-installing-tab-)


[Flutter：实现一个滑动头部折叠的动画效果](https://blog.csdn.net/yumi0629/article/details/81775805)

[flutter顶部折叠动画](https://blog.csdn.net/u011272795/article/details/82740389)


[json处理](https://flutterchina.club/json/)

[json处理，适合大项目](https://github.com/dart-lang/json_serializable/tree/master/example)

定义模板
```
import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable()
class User {
  final int code;
  final String status;
  final String msg;
  @JsonKey(nullable: false)
  List<Item> data;

  User(this.code, this.status, this.msg, {List<Item> data})
      : data = data ?? <Item>[];
}

@JsonSerializable(includeIfNull: false)
class Item {
  String title;
  List<UserDetail> data;
  Item()

}

@JsonSerializable()
class UserDetail {
  int id;
  String name;

  UserDetail()
}

@JsonLiteral('user.json')
Map get glossaryData => _$glossaryDataJsonLiteral;




```



flutter packages pub run build_runner build 生成模板

[flutter的redux](https://www.jianshu.com/p/34a6224e0cf1)

[redux 修改主题](https://www.codercto.com/a/28285.html)

[定制路由](https://blog.csdn.net/hekaiyou/article/details/72853738)

[SliverAppBar](https://juejin.im/post/5bceb534e51d457aa4596f9a)