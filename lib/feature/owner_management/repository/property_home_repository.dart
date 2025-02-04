import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/models/property_card_model.dart';
import 'package:admin_resort_booking_app/core/data/models/property_details_model.dart';
import 'package:admin_resort_booking_app/feature/owner_management/services/property_home_services.dart';

class PropertyHomeRepository {
  final PropertyHomeServices _services;

  PropertyHomeRepository({required PropertyHomeServices services})
      : _services = services;

  Future<List<PropertyCardModel>> fetchProperties(
      {required String type}) async {
    try {
      final data = await _services.fetchProperties(type: type);
      log(data[2]['reviews'].toString());
      return data
          .map(
            (e) => PropertyCardModel.fromMap(e),
          )
          .toList();
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  //Function to fetch owner properties
  Future<List<PropertyCardModel>> fetchOwnerProperties(
      {required String ownerId}) async {
    try {
      final data = await _services.fetchOwnerProperties(ownerId: ownerId);
      return data
          .map(
            (e) => PropertyCardModel.fromMap(e),
          )
          .toList();
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  Future<PropertyDetailsModel> fetchPropertyDetails(
      {required String id}) async {
    try {
      final data = await _services.fetchPropertyDetails(propertyId: id);
      return PropertyDetailsModel.fromMap(data);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }
}
