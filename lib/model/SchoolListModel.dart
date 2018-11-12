import 'package:json_annotation/json_annotation.dart';

part 'SchoolListModel.g.dart';

@JsonSerializable()
class SchoolListModel {
  final int code;
  final String status;
  final String msg;
  @JsonKey(nullable: false)
  List<SchoolDetail> data;

  SchoolListModel(this.code, this.status, this.msg, {List<SchoolDetail> data})
      : data = data ?? <SchoolDetail>[];

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
