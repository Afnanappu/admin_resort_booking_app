import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/models/review_model.dart';
import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewServices {
  final __propertyCollection =
      FirebaseFirestore.instance.collection('properties');
  final _reviewCollectionName = 'reviews';

  Future<void> addReview(ReviewModel review) async {
    try {
      final doc = __propertyCollection
          .doc(review.propertyId)
          .collection(_reviewCollectionName)
          .doc();
      review.reviewId = doc.id;
      await doc.set(review.toMap());
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<List<Map<String, dynamic>>> fetchReviews(String propertyId) async {
    try {
      final data = await __propertyCollection
          .doc(propertyId)
          .collection(_reviewCollectionName)
          .get();
      final list = <Map<String, dynamic>>[];
      for (var e in data.docChanges) {
        if (e.doc.data() != null) {
          list.add(e.doc.data()!);
        }
      }

      return list;
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<Map<String, dynamic>?> fetchMyReview(
      {required String propertyId, required String bookingId}) async {
    try {
      final data = await __propertyCollection
          .doc(propertyId)
          .collection(_reviewCollectionName)
          .where('bookingId', isEqualTo: bookingId)
          .get();

      return data.docs.firstOrNull?.data();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  //Fetch all reviews for a owner
  Future<List<Map<String, dynamic>>> fetchOwnerReviews(String ownerId) async {
    try {
      final data = await __propertyCollection
          .where('ownerId', isEqualTo: ownerId)
          .get();
      final list = <Map<String, dynamic>>[];
      for (var e in data.docChanges) {
        if (e.doc.data() != null) {
          final reviewData = await e.doc.reference
              .collection(_reviewCollectionName)
              .get();
          for (var review in reviewData.docChanges) {
            if (review.doc.data() != null) {
              list.add(review.doc.data()!);
            }
          }
        }
      }

      return list;
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }
}
