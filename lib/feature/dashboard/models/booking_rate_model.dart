// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class BookingRateModel {
  final DateTime date;
  final int count;
  BookingRateModel({
    required this.date,
    required this.count,
  });

  BookingRateModel copyWith({
    DateTime? date,
    int? count,
  }) {
    return BookingRateModel(
      date: date ?? this.date,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': Timestamp.fromDate(date),
      'count': count,
    };
  }

  factory BookingRateModel.fromMap(Map<String, dynamic> map) {
    return BookingRateModel(
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      count: map['count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookingRateModel.fromJson(String source) =>
      BookingRateModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BookingRateModel(date: $date, count: $count)';

  @override
  bool operator ==(covariant BookingRateModel other) {
    if (identical(this, other)) return true;

    return other.date == date && other.count == count;
  }

  @override
  int get hashCode => date.hashCode ^ count.hashCode;
}
