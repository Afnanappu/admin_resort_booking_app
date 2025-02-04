import 'package:admin_resort_booking_app/core/data/models/user_model.dart';
import 'package:admin_resort_booking_app/core/data/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_management_state.dart';
part 'user_management_cubit.freezed.dart';

class UserManagementCubit extends Cubit<UserManagementState> {
  final UserRepository _repository;
  UserManagementCubit(this._repository) : super(UserManagementState.loading());

  //Function to fetch all users
  Future<void> fetchUsers() async {
    emit(UserManagementState.loading());
    try {
      final users = await _repository.fetchAllUsers();

      emit(UserManagementState.loaded(users));
    } catch (e) {
      emit(UserManagementState.error(e.toString()));
    }
  }

  //Function to block or unblock owner
  Future<void> blockUnblockUser(String userId, bool isBlocked) async {
    emit(UserManagementState.loading());
    try {
      await _repository.blockUnblockUser(userId, isBlocked);
      final users = await _repository.fetchAllUsers();
      emit(UserManagementState.loaded(users));
    } catch (e) {
      emit(UserManagementState.error(e.toString()));
    }
  }
}
