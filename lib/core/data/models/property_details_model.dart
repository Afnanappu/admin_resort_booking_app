// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:admin_resort_booking_app/core/data/models/extra_details_model.dart';
import 'package:admin_resort_booking_app/core/data/models/location_model.dart';
import 'package:admin_resort_booking_app/core/data/models/picked_file_model.dart';
import 'package:admin_resort_booking_app/core/data/models/review_model.dart';

class PropertyDetailsModel {
  String? id;
  String ownerId;
  List<PickedFileModel> images;
  String name;
  LocationModel location;
  String type;
  List<ReviewModel> reviews;
  String description;
  double price;
  int roomCount;
  List<PickedFileModel> licenses;
  ExtraDetailsModel extraDetails;
  String checkInTime;
  String checkOutTime;
  PropertyDetailsModel({
    this.id,
    required this.ownerId,
    required this.images,
    required this.name,
    required this.location,
    required this.type,
    required this.reviews,
    required this.description,
    required this.price,
    required this.roomCount,
    required this.licenses,
    required this.extraDetails,
    required this.checkInTime,
    required this.checkOutTime,
  });

  PropertyDetailsModel copyWith({
    String? id,
    String? ownerId,
    List<PickedFileModel>? images,
    String? name,
    LocationModel? location,
    String? type,
    List<ReviewModel>? reviews,
    String? description,
    double? price,
    int? roomCount,
    List<PickedFileModel>? licenses,
    ExtraDetailsModel? extraDetails,
    String? checkInTime,
    String? checkOutTime,
  }) {
    return PropertyDetailsModel(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      images: images ?? this.images,
      name: name ?? this.name,
      location: location ?? this.location,
      type: type ?? this.type,
      reviews: reviews ?? this.reviews,
      description: description ?? this.description,
      price: price ?? this.price,
      roomCount: roomCount ?? this.roomCount,
      licenses: licenses ?? this.licenses,
      extraDetails: extraDetails ?? this.extraDetails,
      checkInTime: checkInTime ?? this.checkInTime,
      checkOutTime: checkOutTime ?? this.checkOutTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ownerId': ownerId,
      'images': images.map((x) => x.toMap()).toList(),
      'name': name,
      'location': location.toMap(),
      'type': type,
      'reviews': reviews.map((x) => x.toMap()).toList(),
      'description': description,
      'price': price,
      'roomCount': roomCount,
      'licenses': licenses.map((x) => x.toMap()).toList(),
      'extraDetails': extraDetails.toMap(),
      'checkInTime': checkInTime,
      'checkOutTime': checkOutTime,
    };
  }

  factory PropertyDetailsModel.fromMap(Map<String, dynamic> map) {
    return PropertyDetailsModel(
      id: map['id'] != null ? map['id'] as String : null,
      ownerId: map['ownerId'] as String,
      images: List<PickedFileModel>.from(
        (map['images'] as List<dynamic>).map<PickedFileModel>(
          (x) => PickedFileModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      name: map['name'] as String,
      location: LocationModel.fromMap(map['location'] as Map<String, dynamic>),
      type: map['type'] as String,
      reviews: List<ReviewModel>.from(
        (map['reviews'] as List<dynamic>).map<ReviewModel>(
          (x) => ReviewModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      description: map['description'] as String,
      price: map['roomPrice'] as double,
      roomCount: map['roomCount'] as int,
      licenses: List<PickedFileModel>.from(
        (map['licenses'] as List<dynamic>).map<PickedFileModel>(
          (x) => PickedFileModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      extraDetails: ExtraDetailsModel.fromMap(
          map['extraDetails'] as Map<String, dynamic>),
      checkInTime: map['checkInTime'] as String,
      checkOutTime: map['checkOutTime'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PropertyDetailsModel.fromJson(String source) =>
      PropertyDetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PropertyDetailsModel(id: $id, ownerId: $ownerId, images: $images, name: $name, location: $location, type: $type, reviews: $reviews, description: $description, price: $price, roomCount: $roomCount, licenses: $licenses, extraDetails: $extraDetails, checkInTime: $checkInTime, checkOutTime: $checkOutTime)';
  }

  @override
  bool operator ==(covariant PropertyDetailsModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.ownerId == ownerId &&
        listEquals(other.images, images) &&
        other.name == name &&
        other.location == location &&
        other.type == type &&
        listEquals(other.reviews, reviews) &&
        other.description == description &&
        other.price == price &&
        other.roomCount == roomCount &&
        listEquals(other.licenses, licenses) &&
        other.extraDetails == extraDetails &&
        other.checkInTime == checkInTime &&
        other.checkOutTime == checkOutTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        ownerId.hashCode ^
        images.hashCode ^
        name.hashCode ^
        location.hashCode ^
        type.hashCode ^
        reviews.hashCode ^
        description.hashCode ^
        price.hashCode ^
        roomCount.hashCode ^
        licenses.hashCode ^
        extraDetails.hashCode ^
        checkInTime.hashCode ^
        checkOutTime.hashCode;
  }
}



  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'ownerId': ownerId,
  //     'images': images.map((x) => x.toMap()).toList(),
  //     'name': name,
  //     'location': location.toMap(),
  //     'type': type,
  //     'rating': rating,
  //     'reviews': reviews,
  //     'description': description,
  //     'price': price,
  //     'licenses': licenses.map((x) => x.toMap()).toList(),
  //     'extraDetails': extraDetails.toMap(),
  //     'checkInTime': checkInTime,
  //     'checkOutTime': checkOutTime,
  //   };
  // }

  // factory PropertyDetailsModel.fromMap(Map<String, dynamic> map) {
  //   return PropertyDetailsModel(
  //     id: map['id'] != null ? map['id'] as String : null,
  //     ownerId: map['ownerId'] as String,
  //     images: List<PickedFileModel>.from(
  //       (map['images'] as List<dynamic>).map<PickedFileModel>(
  //         (x) => PickedFileModel.fromMap(x as Map<String, dynamic>),
  //       ),
  //     ),
  //     name: map['name'] as String,
  //     location: LocationModel.fromMap(map['location'] as Map<String, dynamic>),
  //     type: map['type'] as String,
  //     rating: (map['rating'] as num).toDouble(),
  //     reviews: List<String>.from((map['reviews'] as List<dynamic>)),
  //     description: map['description'] as String,
  //     price: (map['roomPrice'] as num).toDouble(),
  //     licenses: List<PickedFileModel>.from(
  //       (map['licenses'] as List<dynamic>).map<PickedFileModel>(
  //         (x) => PickedFileModel.fromMap(x as Map<String, dynamic>),
  //       ),
  //     ),
  //     extraDetails: ExtraDetailsModel.fromMap(
  //         map['extraDetails'] as Map<String, dynamic>),
  //     checkInTime: map['checkInTime'] as String,
  //     checkOutTime: map['checkOutTime'] as String,
  //   );
  // }
