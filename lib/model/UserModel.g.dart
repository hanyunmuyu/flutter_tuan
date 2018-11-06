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
    'name': '',
    'email': '',
    'mobile': '15701308875',
    'api_token': 'e1bccd465c9e7a0372776a8631f671de',
    'email_verified_at': '',
    'created_at': '2018-11-06 04:06:06',
    'updated_at': '2018-11-06 04:22:03'
  }
};
