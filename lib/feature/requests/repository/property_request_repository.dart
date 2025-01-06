import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:admin_resort_booking_app/feature/requests/model/request_property_model.dart';
import 'package:admin_resort_booking_app/feature/requests/services/property_request_services.dart';

class PropertyRequestRepository {
  final PropertyRequestServices _service;

  PropertyRequestRepository({required PropertyRequestServices service})
      : _service = service;

  Future<List<RequestPropertyModel>> fetchUnVerifiedPropertyData() async {
    try {
      final data = await _service.fetchUnVerifiedPropertyDataFromFirebase();
      return data
          .map(
            (e) => RequestPropertyModel.fromMap(e),
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

  Future<void> approvePropertyRequest(String id) async {
    try {
      await _service.approvePropertyRequest(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> rejectPropertyRequest(String id) async {
    try {
      await _service.rejectPropertyRequest(id);
    } catch (e) {
      rethrow;
    }
  }
}
