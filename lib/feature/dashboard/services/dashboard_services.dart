import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/services/review_services.dart';
import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DashboardServices {
  final db = FirebaseFirestore.instance;

  //Function to fetch the dashboard data
  Future<Map<String, dynamic>> fetchDashboardData() async {
    final Map<String, dynamic> map = {};
    try {
      //reportOverview
      final propertyCountData = await db.collection('properties').count().get();
      final propertyCount = propertyCountData.count;

      final ownerDataList = await db.collection('owners').get();
      final totalOwners = ownerDataList.size;

      final totalUsersData = await db.collection('users').count().get();
      final totalUsers = totalUsersData.count;

      //bookingRates

      final List<Map<String, dynamic>> bookingsList = [];

      for (var owner in ownerDataList.docs) {
        var bookingsSnapshot =
            await owner.reference.collection('bookings').get();

        bookingsList.addAll(
          bookingsSnapshot.docs.map(
            (e) => e.data(),
          ),
        );
      }

      //find the revenue of the bookings
      final double totalRevenueOfOwners = bookingsList.fold(
        0.0,
        (previous, booking) => previous + booking['totalPrice'],
      );

      final totalRevenue = bookingsList.length *
          50; //TODO: currently calucating revenue of the app as like this. 50 is the current money that is beign taken to a booking from the user.

      final bookedDates = bookingsList
          .map(
            (e) => e['createdAt'],
          )
          .toList();
      final List<Map<String, dynamic>> cancelledBookingProperties = [];
      final reviewServices = ReviewServices();
      for (var e in bookingsList) {
        if (e['status'].toLowerCase() == 'cancelled') {
          final propertyId = e['propertyId'];
          final propertyDoc =
              await db.collection('properties').doc(propertyId).get();
          final property = propertyDoc.data()!;
          final reviews = await reviewServices.fetchReviews(propertyId);

          property['reviews'] = reviews;
          cancelledBookingProperties.add(property);
        }
      }

      final Map<String, dynamic> reviewOverview = {
        'totalProperties': propertyCount,
        'totalRevenue': totalRevenue,
        'totalOwners': totalOwners,
        'totalUsers': totalUsers,
        'totalRevenueOfOwners': totalRevenueOfOwners,
      };

      map['reportOverview'] = reviewOverview;
      map['bookedDates'] = bookedDates;
      map['cancelledProperties'] = cancelledBookingProperties;

      return map;
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }
}
