import 'package:json_annotation/json_annotation.dart';

part 'CommunityListModel.g.dart';

@JsonSerializable()
class CommunityListModel {
  final int code;
  final String status;
  final String msg;

  @JsonKey(nullable: false)
  List<CommunityDetail> data;

  CommunityListModel(this.code, this.status, this.msg,
      {List<CommunityDetail> data})
      : data = data ?? <CommunityDetail>[];

  factory CommunityListModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityListModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityListModelToJson(this);
}

@JsonSerializable(includeIfNull: false)
class CommunityDetail {
  CommunityDetail();

  factory CommunityDetail.fromJson(Map<String, dynamic> json) =>
      _$CommunityDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDetailToJson(this);
}

@JsonLiteral('communityList.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
