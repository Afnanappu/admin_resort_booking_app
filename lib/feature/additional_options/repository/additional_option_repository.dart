import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:admin_resort_booking_app/feature/additional_options/models/additional_option_tile_model.dart';
import 'package:admin_resort_booking_app/feature/additional_options/services/additional_options_services.dart';

class AdditionalOptionRepository {
  final AdditionalOptionsServices _additionalOptionsServices;

  AdditionalOptionRepository(
      {required AdditionalOptionsServices additionalOptionsServices})
      : _additionalOptionsServices = additionalOptionsServices;

  Future<void> addAdditionOptions({
    required String type,
    required AdditionalOptionTileModel model,
    String? additionalDocId,
    String? dataDocId,
  }) async {
    try {
      await _additionalOptionsServices.addAdditionOptions(
        type: type,
        model: model,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<List<AdditionalOptionTileModel>> fetchAllDataOfOneOption(
      {required String type}) async {
    try {
      final data =
          await _additionalOptionsServices.fetchAllDataOfOneOption(type: type);

      final dataModels = data
          .map(
            (e) => AdditionalOptionTileModel.fromMap(e),
          )
          .toList();

      return dataModels;
    } on FormatException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFormatException(e);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteOptionData(
      {required String type, required String docId}) async {
    try {
      await _additionalOptionsServices.deleteOptionData(
        type: type,
        docId: docId,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> editOptionData({
    required String type,
    required String docId,
    required AdditionalOptionTileModel model,
  }) async {
    try {
      await _additionalOptionsServices.editOptionData(
        type: type,
        docId: docId,
        model: model,
      );
    } catch (e) {
      rethrow;
    }
  }
}
