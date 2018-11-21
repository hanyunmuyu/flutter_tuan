// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BaseDataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseDataModel _$BaseDataModelFromJson(Map<String, dynamic> json) {
  return BaseDataModel(
      json['code'] as int, json['status'] as String, json['msg'] as String);
}

Map<String, dynamic> _$BaseDataModelToJson(BaseDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'msg': instance.msg
    };
