import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_tuan/model/BaseModel.dart';

part 'BaseDataModel.g.dart';

@JsonSerializable()
class BaseDataModel extends BaseModel {
  final int code;
  final String status;
  final String msg;

  BaseDataModel(this.code, this.status, this.msg);

  factory BaseDataModel.fromJson(Map<String, dynamic> json) =>
      _$BaseDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$BaseDataModelToJson(this);
}
