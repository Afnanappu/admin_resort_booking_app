// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:admin_resort_booking_app/core/models/picked_file_model.dart';

class AdditionalOptionTileModel {
  String? id;
  String name;
  PickedFileModel? image;
  AdditionalOptionTileModel({
    this.id,
    required this.name,
    this.image,
  });

  AdditionalOptionTileModel copyWith({
    String? id,
    String? name,
    PickedFileModel? image,
  }) {
    return AdditionalOptionTileModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image?.toMap(),
    };
  }

  factory AdditionalOptionTileModel.fromMap(Map<String, dynamic> map) {
    return AdditionalOptionTileModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
      image: map['image'] != null ? PickedFileModel.fromMap(map['image'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdditionalOptionTileModel.fromJson(String source) =>
      AdditionalOptionTileModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AdditionalOptionTileModel(id: $id, name: $name, image: $image)';

  @override
  bool operator ==(covariant AdditionalOptionTileModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.image == image;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ image.hashCode;
}
