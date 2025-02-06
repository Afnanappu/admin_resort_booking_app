import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/models/property_card_model.dart';
import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/dashboard/models/booking_rate_model.dart';
import 'package:admin_resort_booking_app/feature/dashboard/models/dashboard_model.dart';
import 'package:admin_resort_booking_app/feature/dashboard/models/report_overview_model.dart';
import 'package:admin_resort_booking_app/feature/dashboard/services/dashboard_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DashboardRepository {
  final DashboardServices _services;

  DashboardRepository(this._services);

  //function to fetch data to the dashboard
  Future<DashboardModel> fetchDashboardData() async {
    try {
      final dashboardData = await _services.fetchDashboardData();
      final reviewOverviewData = dashboardData['reportOverview'];
      final reviewOverviewModel =
          ReportOverviewModel.fromMap(reviewOverviewData);

      final cancelBookingData = dashboardData['cancelledProperties'] as List;
      final cancelledProperties = cancelBookingData
          .map((data) => PropertyCardModel.fromMap(data))
          .toList();

      final bookingDates = (dashboardData['bookedDates'] as List<dynamic>)
          .map(
            (e) => (e as Timestamp).toDate(),
          )
          .toList();

      final Map<DateTime, int> frequency = {};

      for (var date in bookingDates) {
        final newDate = getPureDate(date);
        frequency[newDate] = (frequency[newDate] ?? 0) + 1;
      }

      final bookingRates = frequency.entries
          .map(
            (e) => BookingRateModel(date: e.key, count: e.value),
          )
          .toList();
      final dashboardModel = DashboardModel(
        reportOverview: reviewOverviewModel,
        bookingRates: bookingRates,
        cancelledProperties: cancelledProperties,
      );
      return dashboardModel;
    } catch (error, stack) {
      log(error.toString(), stackTrace: stack);
      rethrow;
    }
  }
}
