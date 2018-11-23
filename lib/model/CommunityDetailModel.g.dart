// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommunityDetailModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityDetailModel _$CommunityDetailModelFromJson(Map<String, dynamic> json) {
  return CommunityDetailModel(json['code'] as int, json['status'] as String,
      json['msg'] as String, json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CommunityDetailModelToJson(
        CommunityDetailModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data
    };

CommunityDetail _$CommunityDetailFromJson(Map<String, dynamic> json) {
  return CommunityDetail();
}

Map<String, dynamic> _$CommunityDetailToJson(CommunityDetail instance) =>
    <String, dynamic>{};

// **************************************************************************
// JsonLiteralGenerator
// **************************************************************************

final _$glossaryDataJsonLiteral = {
  'code': 200,
  'status': 'success',
  'msg': '成功！',
  'data': {
    'id': 195,
    'community_name': '社团名字-195',
    'community_logo': '/img/c.jpg',
    'favorite_number': 1,
    'member_number': 1,
    'school_id': 82,
    'created_at': '2018-11-19 08:30:31',
    'updated_at': '2018-11-23 02:50:21',
    'school_name': '河南工业大学81',
    'isAttention': true
  }
};
