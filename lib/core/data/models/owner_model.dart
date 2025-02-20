import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class OwnerModel {
  String? uid;

  final String name;

  final String email;

  final String? profilePicture;

  final String? fcmToken;

  final String? phone;

  final bool isBlocked;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  OwnerModel({
    this.uid,
    required this.name,
    required this.email,
    this.profilePicture,
    this.fcmToken,
    this.phone,
    this.isBlocked = false,
    this.createdAt,
    this.updatedAt,
  });

  OwnerModel copyWith({
    String? uid,
    String? name,
    String? email,
    String? profilePicture,
    String? fcmToken,
    String? phone,
    bool? isBlocked,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return OwnerModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      profilePicture: profilePicture ?? this.profilePicture,
      fcmToken: fcmToken ?? this.fcmToken,
      phone: phone ?? this.phone,
      isBlocked: isBlocked ?? this.isBlocked,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'email': email,
      'profilePicture': profilePicture,
      'fcmToken': fcmToken,
      'phone': phone,
      'isBlocked': isBlocked,
      'createdAt': createdAt != null ? Timestamp.fromDate(createdAt!) : null,
      'updatedAt': updatedAt != null ? Timestamp.fromDate(updatedAt!) : null,
    };
  }

  factory OwnerModel.fromMap(Map<String, dynamic> map) {
    return OwnerModel(
      uid: map['uid'] != null ? map['uid'] as String : null,
      name: map['name'] as String,
      email: map['email'] as String,
      profilePicture: map['profilePicture'] != null
          ? map['profilePicture'] as String
          : null,
      fcmToken: map['fcmToken'] != null ? map['fcmToken'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      isBlocked: map['isBlocked'] as bool,
      createdAt: (map['createdAt'] as Timestamp?)?.toDate(),
      updatedAt: (map['updatedAt'] as Timestamp?)?.toDate(),
    );
  }

  String toJson() => json.encode(toMap());

  factory OwnerModel.fromJson(String source) =>
      OwnerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OwnerModel(uid: $uid, name: $name, email: $email, profilePicture: $profilePicture, fcmToken: $fcmToken, phone: $phone, isBlocked: $isBlocked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant OwnerModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.name == name &&
        other.email == email &&
        other.profilePicture == profilePicture &&
        other.fcmToken == fcmToken &&
        other.phone == phone &&
        other.isBlocked == isBlocked &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        name.hashCode ^
        email.hashCode ^
        profilePicture.hashCode ^
        fcmToken.hashCode ^
        phone.hashCode ^
        isBlocked.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
