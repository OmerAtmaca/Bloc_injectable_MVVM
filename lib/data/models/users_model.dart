
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../api_services/firebase_service/firebase_base_model.dart';

class UsersModel extends FirebaseBaseModel<UsersModel> with IdModel {
  @override
  final String? id;
  final String? saha;
  final String? seans;
  final String? siraNo;
  final String? dosyaNo;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? phoneNumber;
  final DateTime? birthDate;
  final DateTime? createDate;
  final String? tcKimlik;

  UsersModel(
      {this.saha,
      this.seans,
      this.siraNo,
      this.dosyaNo,
      this.phoneNumber,
      this.createDate,
      this.tcKimlik,
      this.id,
      this.birthDate,
      this.firstName,
      this.gender,
      this.lastName
      });

  UsersModel copyWith({
    String? id,
    String? saha,
    String? seans,
    String? siraNo,
    String? dosyaNo,
    String? firstName,
    String? lastName,
    String? gender,
    String? phoneNumber,
    DateTime? birthDate,
    DateTime? createDate,
    String? tcKimlik,
  }) {
    return UsersModel(
      id: id ?? this.id,
      saha: saha ?? this.saha,
      seans: seans ?? this.seans,
      siraNo: siraNo ?? this.siraNo,
      dosyaNo: dosyaNo ?? this.dosyaNo,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      gender: gender ?? this.gender,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birthDate: birthDate ?? this.birthDate,
      createDate: createDate ?? this.createDate,
      tcKimlik: tcKimlik ?? this.tcKimlik,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'saha': saha,
      'seans': seans,
      'siraNo': siraNo,
      'dosyaNo': dosyaNo,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'phoneNumber': phoneNumber,
      'birthDate': birthDate,
      'createDate': createDate,
      'tcKimlik': tcKimlik,
    };
  }

  factory UsersModel.fromMap(Map<String, dynamic> map) {
    return UsersModel(
      id: map['id'] != null ? map['id'] as String : null,
      saha: map['saha'] != null ? map['saha'] as String : null,
      seans: map['seans'] != null ? map['seans'] as String : null,
      siraNo: map['siraNo'] != null ? map['siraNo'] as String : null,
      dosyaNo: map['dosyaNo'] != null ? map['dosyaNo'] as String : null,
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      phoneNumber: map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      birthDate: map['birthDate'] != null ? ((map['birthDate'] as Timestamp).toDate()) : null,
      createDate: map['createDate'] != null ? ((map['createDate'] as Timestamp).toDate()) : null,
      tcKimlik: map['tcKimlik'] != null ? map['tcKimlik'] as String : null,
    );
  }

  factory UsersModel.fromJson(String source) => UsersModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  UsersModel fromJson(Map<String, dynamic> json) {
    return UsersModel.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return toMap();
  }
}
