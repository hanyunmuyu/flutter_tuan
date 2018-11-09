// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(json['code'] as int, json['status'] as String,
      json['msg'] as String, json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data
    };

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return UserDetail();
}

Map<String, dynamic> _$UserDetailToJson(UserDetail instance) =>
    <String, dynamic>{};

// **************************************************************************
// JsonLiteralGenerator
// **************************************************************************

final _$glossaryDataJsonLiteral = {
  'code': 200,
  'status': 'success',
  'msg': '成功！',
  'data': {
    'id': 1,
    'name': 'hanyun',
    'true_name': '',
    'email': '',
    'mobile': '15701308875',
    'api_token': '7a6d927f9ceed4de35953d8c685db84a',
    'email_verified_at': '',
    'avatar': 'http://192.168.1.66:88/img/dog.jpg',
    'school_id': '',
    'gender': 1,
    'motto': '故天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能',
    'created_at': '2018-11-09 06:28:39',
    'updated_at': '2018-11-09 06:30:48'
  }
};
