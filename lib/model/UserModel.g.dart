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
    'api_token': '49a1967beb5df652a6e33518e8a6f689',
    'email_verified_at': '',
    'avatar': '',
    'school_id': '',
    'gender': 1,
    'created_at': '2018-11-07 06:13:28',
    'updated_at': '2018-11-07 06:16:23'
  }
};
