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
    'api_token': '7cfec3b369455ea16a2c888cda5edb63',
    'email_verified_at': '',
    'avatar': 'http://192.168.1.66:88/img/dog.jpg',
    'bg': 'http://192.168.1.66:88/img/dog.jpg',
    'school_id': 46,
    'gender': 1,
    'motto': '故天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能',
    'province': {
      'id': 2456,
      'code': '520000',
      'name': '贵州省',
      'pid': 0,
      'created_at': '2018-11-19 05:45:20',
      'updated_at': '2018-11-19 05:45:20'
    },
    'city': {
      'id': 2457,
      'code': '520100',
      'name': '贵阳市',
      'pid': 2456,
      'created_at': '2018-11-19 05:45:20',
      'updated_at': '2018-11-19 05:45:20'
    },
    'area': {
      'id': 2458,
      'code': '520102',
      'name': '南明区',
      'pid': 2457,
      'created_at': '2018-11-19 05:45:20',
      'updated_at': '2018-11-19 05:45:20'
    },
    'created_at': '2018-11-19 05:45:21',
    'updated_at': '2018-11-19 05:45:22',
    'school': {
      'id': 46,
      'school_name': '河南工业大学45',
      'school_logo': '/img/a.jpg',
      'favorite_number': 0,
      'member_number': 0,
      'created_at': '2018-11-19 05:45:21',
      'updated_at': '2018-11-19 05:45:21'
    }
  }
};
