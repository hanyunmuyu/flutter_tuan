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
    'api_token': '30429ad584d3b59077ba6694d6295acb',
    'email_verified_at': '',
    'avatar': 'http://192.168.1.66:88/img/dog.jpg',
    'bg': 'http://192.168.1.66:88/img/dog.jpg',
    'school_id': 32,
    'birth_day': '2007-11-19',
    'grade': 2002,
    'gender': 1,
    'motto': '故天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能',
    'province': {
      'id': 2782,
      'code': '610000',
      'name': '陕西省',
      'pid': 0,
      'created_at': '2018-11-19 06:39:03',
      'updated_at': '2018-11-19 06:39:03'
    },
    'city': {
      'id': 2783,
      'code': '610100',
      'name': '西安市',
      'pid': 2782,
      'created_at': '2018-11-19 06:39:03',
      'updated_at': '2018-11-19 06:39:03'
    },
    'area': {
      'id': 2784,
      'code': '610102',
      'name': '新城区',
      'pid': 2783,
      'created_at': '2018-11-19 06:39:03',
      'updated_at': '2018-11-19 06:39:03'
    },
    'created_at': '2018-11-19 06:39:04',
    'updated_at': '2018-11-19 06:39:27',
    'school': {
      'id': 32,
      'school_name': '河南工业大学31',
      'school_logo': '/img/c.jpg',
      'favorite_number': 0,
      'member_number': 0,
      'created_at': '2018-11-19 06:39:04',
      'updated_at': '2018-11-19 06:39:04'
    }
  }
};
