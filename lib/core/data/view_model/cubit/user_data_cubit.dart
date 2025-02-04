import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/models/user_model.dart';
import 'package:admin_resort_booking_app/core/data/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDataCubit extends Cubit<UserModel?> {
  final UserRepository _repository;
  UserDataCubit(this._repository) : super(null);

  Future<void> fetchUserData(String userId) async {
    try {
      final user = await _repository.fetchUserData(userId);
      emit(user);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
    }
  }

  void setUser(UserModel userModel) {
    emit(userModel);
  }

  // Future<void> updateUserData(UserModel userModel) async {
  //   try {
  //     await _repository.updateUserData(userModel);
  //   } catch (e, stack) {
  //     log(e.toString(), stackTrace: stack);
  //   }
  // }

  // void updateFields() async {
  //   await _repository.updateFields();
  // }

  // Backfill Data
  Future<void> backfillData() async {
    // try {
    //   await _repository.backfillData();
    // } catch (e, stack) {
    //   log(e.toString(), stackTrace: stack);
    // }
  }
}
