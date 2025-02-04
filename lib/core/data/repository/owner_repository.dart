import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/models/owner_model.dart';
import 'package:admin_resort_booking_app/core/data/services/owner_services.dart';

class OwnerRepository {
  final OwnerServices _services;

  OwnerRepository({required OwnerServices services}) : _services = services;

  Future<OwnerModel> fetchOwnerData(String uid) async {
    try {
      final data = await _services.fetchOwnerData(uid);
      return OwnerModel.fromMap(data!);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  //Function to fetch all owners
  Future<List<OwnerModel>> fetchAllOwners() async {
    try {
      final data = await _services.fetchAllOwners();
      return data
          .map(
            (e) => OwnerModel.fromMap(e!),
          )
          .toList();
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  //Function to block or unblock owner
  Future<void> blockUnblockOwner(String uid, bool isBlocked) async {
    try {
      await _services.blockUnblockOwner(uid, isBlocked);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }
}
