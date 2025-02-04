import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserServices {
  Future<Map<String, dynamic>?> fetchUserData() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;

    try {
      final data =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      return data.data();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  // Future<void> updateUserData(UserModel userModel) async {
  //   try {
  //     final newUserModel = Map.fromEntries(
  //       userModel.toMap().entries.where(
  //             (entry) => entry.value != null,
  //           ),
  //     );
  //     await FirebaseFirestore.instance
  //         .collection('users')
  //         .doc(userModel.uid)
  //         .update(newUserModel);
  //     log('User data is updated');
  //   } on FirebaseException catch (e, stack) {
  //     log(e.toString(), stackTrace: stack);
  //     throw AppExceptionHandler.handleFirestoreException(e);
  //   } catch (e, stack) {
  //     log(e.toString(), stackTrace: stack);
  //     throw AppExceptionHandler.handleGenericException(e);
  //   }
  // }

  // Fetch all user data
  Future<List<Map<String, dynamic>?>> fetchAllUsers() async {
    try {
      final data = await FirebaseFirestore.instance.collection('users').get();
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
  Future<void> blockUnblockUser(String userId, bool isBlocked) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).update({
        'isBlocked': isBlocked,
      });
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<void> backfillData() async {
    final usersCollection = FirebaseFirestore.instance.collection('users');
    final querySnapshot = await usersCollection.get();
    for (var doc in querySnapshot.docs) {
      if (!doc.data().containsKey('isBlocked')) {
        await doc.reference.update({
          'isBlocked': false,
        }); // Set default empty array
      }
    }
  }
}
