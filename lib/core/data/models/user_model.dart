import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  String? uid;

  final String name;

  final String email;

  final String? profilePicture;

  final List<String> favorites;

  final String? phone;

  final String? fcmToken;

  final bool isBlocked;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  UserModel({
    this.uid,
    required this.name,
    required this.email,
    this.profilePicture,
    this.favorites = const [],
    this.phone,
    this.fcmToken,
    this.isBlocked = false,
    this.createdAt,
    this.updatedAt,
  });

  UserModel copyWith({
    String? uid,
    String? name,
    String? email,
    String? profilePicture,
    List<String>? favorites,
    String? phone,
    String? fcmToken,
    bool? isBlocked,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      profilePicture: profilePicture ?? this.profilePicture,
      favorites: favorites ?? this.favorites,
      phone: phone ?? this.phone,
      fcmToken: fcmToken ?? this.fcmToken,
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
      'favorites': favorites,
      'phone': phone,
      'fcmToken': fcmToken,
      'isBlocked': isBlocked,
      'createdAt': createdAt != null ? Timestamp.fromDate(createdAt!) : null,
      'updatedAt': updatedAt != null ? Timestamp.fromDate(updatedAt!) : null,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] != null ? map['uid'] as String : null,
      name: map['name'] as String,
      email: map['email'] as String,
      profilePicture: map['profilePicture'] != null
          ? map['profilePicture'] as String
          : null,
      favorites: List<String>.from(
        (map['favorites'] as List<dynamic>),
      ),
      phone: map['phone'] != null ? map['phone'] as String : null,
      fcmToken: map['fcmToken'] != null ? map['fcmToken'] as String : null,
      isBlocked: map['isBlocked'] as bool,
      createdAt: (map['createdAt'] as Timestamp?)?.toDate(),
      updatedAt: (map['updatedAt'] as Timestamp?)?.toDate(),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(uid: $uid, name: $name, email: $email, profilePicture: $profilePicture, favorites: $favorites, phone: $phone, fcmToken: $fcmToken, isBlocked: $isBlocked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.name == name &&
        other.email == email &&
        other.profilePicture == profilePicture &&
        listEquals(other.favorites, favorites) &&
        other.phone == phone &&
        other.fcmToken == fcmToken &&
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
        favorites.hashCode ^
        phone.hashCode ^
        fcmToken.hashCode ^
        isBlocked.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
