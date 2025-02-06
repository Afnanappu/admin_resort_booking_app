import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/models/report_issue_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportIssueServices {
  Future<List<ReportIssueModel>> getReports() async {
    try {
      final res =
          await FirebaseFirestore.instance.collection('reported_issue').get();
      final data = res.docChanges
          .map(
            (e) => e.doc.data(),
          )
          .toList();

      final model = data
          .map(
            (e) => ReportIssueModel.fromMap(e!),
          )
          .toList();

      return model;
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<ReportIssueModel> getOneReport(String id) async {
    try {
      final res = await FirebaseFirestore.instance
          .collection('reported_issue')
          .doc(id)
          .get();
      final data = res.data();
      if (data == null) {
        throw 'Can\'t find report';
      }
      final model = ReportIssueModel.fromMap(data);

      return model;
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<void> updateReportStatus(String id, String status) async {
    try {
      await FirebaseFirestore.instance
          .collection('reported_issue')
          .doc(id)
          .update({'status': status});
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }
}
