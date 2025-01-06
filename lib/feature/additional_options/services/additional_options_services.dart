import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:admin_resort_booking_app/feature/additional_options/models/additional_option_tile_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdditionalOptionsServices {
  final _dataCollection = 'data';
  final _additionalCollection =
      FirebaseFirestore.instance.collection('additional_options');

  Future<void> addAdditionOptions({
    required String type,
    required AdditionalOptionTileModel model,
    // String? additionalDocId,
    // String? dataDocId,
  }) async {
    try {
      // final data = _additionalCollection.doc(type);
      // await data.collection(_dataCollection).add(model.toMap());
      // log('A data is added to firebase');
      final data = _additionalCollection.doc(type);

      // await data.set({'type': type}, SetOptions(merge: true));
      final doc = data.collection(_dataCollection).doc();

      //assigning the id of the doc to the id field in the model for future use.
      model.id = doc.id;
      log('New id created: ${doc.id}');
      doc.set(
        model.toMap(),
        SetOptions(merge: true),
      );
    } on FirebaseException catch (_) {
      // try {
      //   final data = _additionalCollection.doc(type);

      //   // await data.set({'type': type}, SetOptions(merge: true));
      //   final doc = data.collection(_dataCollection).doc();

      //   //assigning the id of the doc to the id field in the model for future use.
      //   model.id = doc.id;
      //   log('New id created: ${doc.id}');
      //   doc.set(
      //     model.toMap(),
      //     SetOptions(merge: true),
      //   );
      //   log('Created a new collection in the firebase');
      // } on FirebaseException catch (e, stack) {
      //   log(e.toString(), stackTrace: stack);
      //   throw AppExceptionHandler.handleFirestoreException(e);
      // } catch (e, stack) {
      //   log(e.toString(), stackTrace: stack);
      //   throw AppExceptionHandler.handleGenericException(e);
      // }
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<List<Map<String, dynamic>>> fetchAllDataOfOneOption({
    required String type,
  }) async {
    try {
      final data = await _additionalCollection
          .doc(type)
          .collection(_dataCollection)
          .get();
      return data.docs
          .map(
            (e) => e.data(),
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

  Future<void> deleteOptionData(
      {required String type, required String docId}) async {
    try {
      await _additionalCollection
          .doc(type)
          .collection(_dataCollection)
          .doc(docId)
          .delete();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<void> editOptionData({
    required String type,
    required String docId,
    required AdditionalOptionTileModel model,
  }) async {
    try {
      await _additionalCollection
          .doc(type)
          .collection(_dataCollection)
          .doc(docId)
          .update(model.toMap());
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }
}
