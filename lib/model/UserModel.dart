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

@JsonSerializable(includeIfNull: true)
class UserDetail {
  UserDetail();
}

@JsonLiteral('User.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
