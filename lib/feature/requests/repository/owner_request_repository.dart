import 'dart:developer';
import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:admin_resort_booking_app/feature/requests/model/owner_model.dart';
import 'package:admin_resort_booking_app/feature/requests/services/owner_request_service.dart';

class OwnerRequestRepository {
  final OwnerRequestService _service;

  OwnerRequestRepository({required OwnerRequestService service})
      : _service = service;

  Future<List<OwnerModel>> fetchUnVerifiedOwnerDataFromFirebase() async {
    try {
      final data = await _service.fetchUnVerifiedOwnerDataFromFirebase();
      return data
          .map(
            (e) => OwnerModel.fromMap(e),
          )
          .toList();
    } on FormatException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFormatException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<void> approveOwnerRequest(String uid) async {
    try {
      await _service.approveOwnerRequest(uid);
    } catch (e) {
      rethrow;
    }
  }
  Future<void> rejectOwnerRequest(String uid) async {
    try {
      await _service.rejectOwnerRequest(uid);
    } catch (e) {
      rethrow;
    }
  }
}
