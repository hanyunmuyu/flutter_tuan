import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_tuan/model/BaseModel.dart';

part 'SchoolListModel.g.dart';

@JsonSerializable()
class SchoolListModel extends BaseModel {
  final int code;
  final String status;
  final String msg;
  @JsonKey(nullable: false)
  final Map<String, dynamic> data;

  SchoolListModel(this.code, this.status, this.msg, this.data);

  factory SchoolListModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolListModelFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolListModelToJson(this);
}

@JsonSerializable(includeIfNull: false)
class SchoolDetail {
  SchoolDetail();

  factory SchoolDetail.fromJson(Map<String, dynamic> json) =>
      _$SchoolDetailFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolDetailToJson(this);
}

@JsonLiteral('schoolList.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
