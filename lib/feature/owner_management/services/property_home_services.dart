import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/services/review_services.dart';
import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PropertyHomeServices {
  final ReviewServices _reviewServices;

  PropertyHomeServices(this._reviewServices);
  final _propertiesCollection =
      FirebaseFirestore.instance.collection('properties');
  // final _reviewCollectionName = 'reviews';

  //All this owner property
  Future<List<Map<String, dynamic>>> fetchProperties(
      {required String type}) async {
    try {
      late final QuerySnapshot<Map<String, dynamic>> data;
      if (type == 'top-rated') {
        data = await _propertiesCollection
            .orderBy('rating', descending: true)
            .get();
      } else {
        data = await _propertiesCollection.get();
      }
      final modelList = data.docs
          .map(
            (e) => e.data(),
          )
          .toList();
      log(data.size.toString());
      for (var property in modelList) {
        final propertyId = property['id'];
        final reviews = await _reviewServices.fetchReviews(propertyId);

        property['reviews'] = reviews;
      }

      return modelList;
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  //Function to fetch owner properties
  Future<List<Map<String, dynamic>>> fetchOwnerProperties(
      {required String ownerId}) async {
    final data =
        await _propertiesCollection.where('ownerId', isEqualTo: ownerId).get();
    final modelList = data.docs
        .map(
          (e) => e.data(),
        )
        .toList();
    log(data.size.toString());
    for (var property in modelList) {
      final propertyId = property['id'];
      final reviews = await _reviewServices.fetchReviews(propertyId);

      property['reviews'] = reviews;
    }

    return modelList;
  }

  //Property details
  Future<Map<String, dynamic>> fetchPropertyDetails(
      {required String propertyId}) async {
    try {
      final data = await _propertiesCollection.doc(propertyId).get();
      final property = data.data()!;
      final reviews = await _reviewServices.fetchReviews(propertyId);
      property['reviews'] = reviews;
      final room = await data.reference.collection('rooms').count().get();
      final roomCount = room.count;
      property['roomCount'] = roomCount;
      return property;
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }
}
