import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OwnerRequestService {
  final ownerCollection = FirebaseFirestore.instance.collection('owners');

  Future<List<Map<String, dynamic>>>
      fetchUnVerifiedOwnerDataFromFirebase() async {
    try {
      final owners =
          await ownerCollection.where('isVerified', isEqualTo: false).get();
      return owners.docs.map(
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

  Future<void> approveOwnerRequest(String uid) async {
    ownerCollection.doc(uid).set(
        {
          'isVerified': true,
        },
        SetOptions(
          merge: true,
        ));
  }
}
