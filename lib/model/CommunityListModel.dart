import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_tuan/model/BaseModel.dart';

part 'CommunityListModel.g.dart';

@JsonSerializable()
class CommunityListModel extends BaseModel {
  final int code;
  final String status;
  final String msg;

  @JsonKey(nullable: false)
  final Map data;

  CommunityListModel(this.code, this.status, this.msg, this.data);

  factory CommunityListModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityListModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityListModelToJson(this);
}

@JsonSerializable(includeIfNull: true)
class CommunityDetail {
  CommunityDetail();

  factory CommunityDetail.fromJson(Map<String, dynamic> json) =>
      _$CommunityDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDetailToJson(this);
}

@JsonLiteral('communityList.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
