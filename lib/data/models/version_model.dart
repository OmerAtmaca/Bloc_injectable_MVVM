// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final version = versionFromJson(jsonString);

import 'dart:convert';

import '../api_services/firebase_service/firebase_base_model.dart';

class VersionModel extends FirebaseBaseModel<VersionModel> with IdModel {
  String? number;

  VersionModel({
    this.number,
  });

  VersionModel copyWith({
    String? number,
  }) {
    return VersionModel(
      number: number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
    };
  }

  factory VersionModel.fromMap(Map<String, dynamic> map) {
    return VersionModel(
      number: map['number'] as String,
    );
  }
  factory VersionModel.fromJson(String source) => VersionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  VersionModel fromJson(Map<String, dynamic> json) {
    return VersionModel.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
