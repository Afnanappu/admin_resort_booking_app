import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PropertyRequestServices {
  final propertyCollection =
      FirebaseFirestore.instance.collection('properties');

  Future<List<Map<String, dynamic>>>
      fetchUnVerifiedPropertyDataFromFirebase() async {
    try {
      final property =
          await propertyCollection.where('isVerified', isEqualTo: false).get();
      return property.docs.map(
        (e) {
          return e.data();
        },
      ).toList();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<void> approvePropertyRequest(String id) async {
    try {
      await propertyCollection.doc(id).set(
          {
            'isVerified': true,
          },
          SetOptions(
            merge: true,
          ));
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    }
  }

  Future<void> rejectPropertyRequest(String id) async {
    try {
      await propertyCollection.doc(id).delete();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    }
  }
}
