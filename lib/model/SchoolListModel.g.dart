// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SchoolListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolListModel _$SchoolListModelFromJson(Map<String, dynamic> json) {
  return SchoolListModel(
      json['code'] as int, json['status'] as String, json['msg'] as String,
      data: (json['data'] as List)
          .map((e) => SchoolDetail.fromJson(e as Map<String, dynamic>))
          .toList());
}

Map<String, dynamic> _$SchoolListModelToJson(SchoolListModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data
    };

SchoolDetail _$SchoolDetailFromJson(Map<String, dynamic> json) {
  return SchoolDetail();
}

Map<String, dynamic> _$SchoolDetailToJson(SchoolDetail instance) =>
    <String, dynamic>{};

// **************************************************************************
// JsonLiteralGenerator
// **************************************************************************

final _$glossaryDataJsonLiteral = {
  'code': 200,
  'status': 'success',
  'msg': '成功！',
  'data': {
    'currentPage': 1,
    'totalPage': 7,
    'data': [
      {
        'id': 1,
        'school_name': '河南工业大学0',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 2,
        'school_name': '河南工业大学1',
        'school_logo': 'http://192.168.1.66:88/img/b.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 3,
        'school_name': '河南工业大学2',
        'school_logo': 'http://192.168.1.66:88/img/b.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 4,
        'school_name': '河南工业大学3',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 5,
        'school_name': '河南工业大学4',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 6,
        'school_name': '河南工业大学5',
        'school_logo': 'http://192.168.1.66:88/img/b.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 7,
        'school_name': '河南工业大学6',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 8,
        'school_name': '河南工业大学7',
        'school_logo': 'http://192.168.1.66:88/img/b.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 9,
        'school_name': '河南工业大学8',
        'school_logo': 'http://192.168.1.66:88/img/c.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 10,
        'school_name': '河南工业大学9',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 11,
        'school_name': '河南工业大学10',
        'school_logo': 'http://192.168.1.66:88/img/c.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 12,
        'school_name': '河南工业大学11',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 13,
        'school_name': '河南工业大学12',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 14,
        'school_name': '河南工业大学13',
        'school_logo': 'http://192.168.1.66:88/img/a.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      },
      {
        'id': 15,
        'school_name': '河南工业大学14',
        'school_logo': 'http://192.168.1.66:88/img/c.jpg',
        'favorite_number': 0,
        'member_number': 0,
        'created_at': '2018-11-12 06:07:35',
        'updated_at': '2018-11-12 06:07:35'
      }
    ]
  }
};
