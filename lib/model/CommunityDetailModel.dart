import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_tuan/model/BaseModel.dart';

part 'CommunityDetailModel.g.dart';

@JsonSerializable()
class CommunityDetailModel extends BaseModel {
  final int code;
  final String status;
  final String msg;
  @JsonKey(nullable: false)
  final Map data;

  CommunityDetailModel(this.code, this.status, this.msg, this.data);

  factory CommunityDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDetailModelToJson(this);
}

@JsonSerializable(includeIfNull: true)
class CommunityDetail {
  CommunityDetail();

  factory CommunityDetail.fromJson(Map<String, dynamic> json) =>
      _$CommunityDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDetailToJson(this);
}

@JsonLiteral('communityDetail.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
