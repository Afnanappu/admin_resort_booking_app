import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OwnerServices {
  Future<Map<String, dynamic>?> fetchOwnerData(String uid) async {
    try {
      final data =
          await FirebaseFirestore.instance.collection('owners').doc(uid).get();
      return data.data();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  //Function to fetch all owners
  Future<List<Map<String, dynamic>?>> fetchAllOwners() async {
    try {
      final data = await FirebaseFirestore.instance.collection('owners').get();
      return data.docChanges
          .map(
            (e) => e.doc.data(),
          )
          .toList();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  //Function to block or unblock owner
  Future<void> blockUnblockOwner(String uid, bool isBlocked) async {
    try {
      await FirebaseFirestore.instance
          .collection('owners')
          .doc(uid)
          .update({'isBlocked': isBlocked});
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }
}
