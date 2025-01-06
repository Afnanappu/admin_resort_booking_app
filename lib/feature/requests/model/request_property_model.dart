// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';

class RequestPropertyModel {
  String? id;
  String name;
  List<DocumentModel> images;
  String type;
  String location;
  String description;
  List<DocumentModel> licenseFiles;
  String checkInTime;
  String checkOutTime;
  RequestPropertyModel({
    this.id,
    required this.name,
    required this.images,
    required this.type,
    required this.location,
    required this.description,
    required this.licenseFiles,
    required this.checkInTime,
    required this.checkOutTime,
  });

  RequestPropertyModel copyWith({
    String? id,
    String? name,
    List<DocumentModel>? images,
    String? type,
    String? location,
    String? description,
    List<DocumentModel>? licenseFiles,
    String? checkInTime,
    String? checkOutTime,
  }) {
    return RequestPropertyModel(
      id: id ?? this.id,
      name: name ?? this.name,
      images: images ?? this.images,
      type: type ?? this.type,
      location: location ?? this.location,
      description: description ?? this.description,
      licenseFiles: licenseFiles ?? this.licenseFiles,
      checkInTime: checkInTime ?? this.checkInTime,
      checkOutTime: checkOutTime ?? this.checkOutTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'images': images.map((x) => x.toMap()).toList(),
      'type': type,
      'location': location,
      'description': description,
      'licenseFiles': licenseFiles.map((x) => x.toMap()).toList(),
      'checkInTime': checkInTime,
      'checkOutTime': checkOutTime,
    };
  }

  factory RequestPropertyModel.fromMap(Map<String, dynamic> map) {
    return RequestPropertyModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
      images: List<DocumentModel>.from(
        (map['images'] as List<dynamic>).map<DocumentModel>(
          (x) => DocumentModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      type: map['type'] as String,
      location: map['location'] as String,
      description: map['description'] as String,
      licenseFiles: List<DocumentModel>.from(
        (map['licenses'] as List<dynamic>).map<DocumentModel>(
          (x) => DocumentModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      checkInTime: map['checkInTime'] as String,
      checkOutTime: map['checkOutTime'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestPropertyModel.fromJson(String source) =>
      RequestPropertyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RequestPropertyModel(id: $id, name: $name, images: $images, type: $type, location: $location, description: $description, licenseFiles: $licenseFiles, checkInTime: $checkInTime, checkOutTime: $checkOutTime)';
  }

  @override
  bool operator ==(covariant RequestPropertyModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        listEquals(other.images, images) &&
        other.type == type &&
        other.location == location &&
        other.description == description &&
        listEquals(other.licenseFiles, licenseFiles) &&
        other.checkInTime == checkInTime &&
        other.checkOutTime == checkOutTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        images.hashCode ^
        type.hashCode ^
        location.hashCode ^
        description.hashCode ^
        licenseFiles.hashCode ^
        checkInTime.hashCode ^
        checkOutTime.hashCode;
  }
}
