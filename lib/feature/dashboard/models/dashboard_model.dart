// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:admin_resort_booking_app/core/data/models/property_card_model.dart';
import 'package:admin_resort_booking_app/feature/dashboard/models/booking_rate_model.dart';
import 'package:admin_resort_booking_app/feature/dashboard/models/report_overview_model.dart';

class DashboardModel {
  final ReportOverviewModel reportOverview;
  final List<BookingRateModel> bookingRates;
  final List<PropertyCardModel> cancelledProperties;
  DashboardModel({
    required this.reportOverview,
    required this.bookingRates,
    required this.cancelledProperties,
  });

  DashboardModel copyWith({
    ReportOverviewModel? reportOverview,
    List<BookingRateModel>? bookingRates,
    List<PropertyCardModel>? cancelledProperties,
  }) {
    return DashboardModel(
      reportOverview: reportOverview ?? this.reportOverview,
      bookingRates: bookingRates ?? this.bookingRates,
      cancelledProperties: cancelledProperties ?? this.cancelledProperties,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportOverview': reportOverview.toMap(),
      'bookingRates': bookingRates.map((x) => x.toMap()).toList(),
      'cancelledProperties': cancelledProperties.map((x) => x.toMap()).toList(),
    };
  }

  factory DashboardModel.fromMap(Map<String, dynamic> map) {
    return DashboardModel(
      reportOverview: ReportOverviewModel.fromMap(
          map['reportOverview'] as Map<String, dynamic>),
      bookingRates: List<BookingRateModel>.from(
        (map['bookingRates'] as List<dynamic>).map<BookingRateModel>(
          (x) => BookingRateModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      cancelledProperties: List<PropertyCardModel>.from(
        (map['cancelledProperties'] as List<dynamic>).map<PropertyCardModel>(
          (x) => PropertyCardModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory DashboardModel.fromJson(String source) =>
      DashboardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DashboardModel(reportOverview: $reportOverview, bookingRates: $bookingRates, cancelledProperties: $cancelledProperties)';

  @override
  bool operator ==(covariant DashboardModel other) {
    if (identical(this, other)) return true;

    return other.reportOverview == reportOverview &&
        listEquals(other.bookingRates, bookingRates) &&
        listEquals(other.cancelledProperties, cancelledProperties);
  }

  @override
  int get hashCode =>
      reportOverview.hashCode ^
      bookingRates.hashCode ^
      cancelledProperties.hashCode;
}
