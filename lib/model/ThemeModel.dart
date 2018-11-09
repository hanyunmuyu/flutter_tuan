import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';

part 'ThemeModel.g.dart';

@JsonSerializable()
class ThemeModel {
  final String themeData;
  static Map<String, ThemeData> map = {
    "dark": ThemeData.dark(),
    "blue": ThemeData.light(),
    "purple": new ThemeData(primarySwatch: Colors.purple)
  };

  ThemeModel(this.themeData);

  factory ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ThemeModelToJson(this);
}
