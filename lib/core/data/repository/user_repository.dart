import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/models/user_model.dart';
import 'package:admin_resort_booking_app/core/data/services/user_services.dart';

class UserRepository {
  final UserServices _services;

  UserRepository({required UserServices services}) : _services = services;

  Future<UserModel> fetchUserData(String userId) async {
    try {
      final data = await _services.fetchUserData();
      return UserModel.fromMap(data!);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  //Function to fetch all users
  Future<List<UserModel>> fetchAllUsers() async {
    try {
      final data = await _services.fetchAllUsers();
      return data
          .map(
            (e) => UserModel.fromMap(e!),
          )
          .toList();
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  
  //Function to block or unblock owner
  Future<void> blockUnblockUser(String userId, bool isBlocked) async {
    try {
      await _services.blockUnblockUser(userId, isBlocked);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  // Backfill Data
  Future<void> backfillData() async {
    try {
      await _services.backfillData();
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }
}
