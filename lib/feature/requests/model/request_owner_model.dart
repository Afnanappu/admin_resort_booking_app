// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';

class RequestOwnerModel {
  final String uid;
  final String ownerId;
  final String name;
  final String email;
  final bool isVerified;
  final String? profilePicture;
  final List<DocumentModel> personalProof;
  RequestOwnerModel({
    required this.uid,
    required this.ownerId,
    required this.name,
    required this.email,
    required this.isVerified,
    required this.profilePicture,
    required this.personalProof,
  });

  RequestOwnerModel copyWith({
    String? uid,
    String? ownerId,
    String? name,
    String? email,
    bool? isVerified,
    String? profilePicture,
    List<DocumentModel>? personalProof,
  }) {
    return RequestOwnerModel(
      uid: uid ?? this.uid,
      ownerId: ownerId ?? this.ownerId,
      name: name ?? this.name,
      email: email ?? this.email,
      isVerified: isVerified ?? this.isVerified,
      profilePicture: profilePicture ?? this.profilePicture,
      personalProof: personalProof ?? this.personalProof,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'ownerId': ownerId,
      'name': name,
      'email': email,
      'isVerified': isVerified,
      'profilePicture': profilePicture,
      'personalProof': personalProof.map((x) => x.toMap()).toList(),
    };
  }

  factory RequestOwnerModel.fromMap(Map<String, dynamic> map) {
    return RequestOwnerModel(
      uid: map['uid'] as String,
      ownerId: map['ownerId'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      isVerified: map['isVerified'] as bool,
      profilePicture: map['profilePicture'] != null
          ? map['profilePicture'] as String
          : null,
      personalProof: List<DocumentModel>.from(
        (map['personalProof'] as List<dynamic>).map<DocumentModel>(
          (x) => DocumentModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestOwnerModel.fromJson(String source) =>
      RequestOwnerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RequestOwnerModel(uid: $uid, ownerId: $ownerId, name: $name, email: $email, isVerified: $isVerified, profilePicture: $profilePicture, personalProof: $personalProof)';
  }

  @override
  bool operator ==(covariant RequestOwnerModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.ownerId == ownerId &&
        other.name == name &&
        other.email == email &&
        other.isVerified == isVerified &&
        other.profilePicture == profilePicture &&
        listEquals(other.personalProof, personalProof);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        ownerId.hashCode ^
        name.hashCode ^
        email.hashCode ^
        isVerified.hashCode ^
        profilePicture.hashCode ^
        personalProof.hashCode;
  }
}
