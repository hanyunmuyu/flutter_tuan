import 'package:json_annotation/json_annotation.dart';

part 'UserModel.g.dart';

@JsonSerializable()
class UserModel {
  final int code;
  final String status;
  final String msg;
  final Map<String, dynamic> data;

  UserModel(this.code, this.status, this.msg, this.data);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserDetail {
  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailToJson(this);

  UserDetail();
//
//  final int id;
//  final String name;
//  final String trueName;
//  final String email;
//  final String mobile;
//  final String apiToken;
//  final String emailVerifiedAt;
//  final String avatar;
//  final int schoolId;
//  final int gender;
//  final String createdAt;
//  final String updatedAt;
//
//  UserDetail(
//      {this.id,
//      this.name,
//      this.trueName,
//      this.email,
//      this.mobile,
//      this.apiToken,
//      this.emailVerifiedAt,
//      this.avatar,
//      this.schoolId,
//      this.gender,
//      this.createdAt,
//      this.updatedAt});

}

@JsonLiteral('User.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
