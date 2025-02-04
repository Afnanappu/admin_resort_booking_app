import 'package:admin_resort_booking_app/core/data/models/owner_model.dart';
import 'package:admin_resort_booking_app/core/data/repository/owner_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_management_state.dart';
part 'owner_management_cubit.freezed.dart';

class OwnerManagementCubit extends Cubit<OwnerManagementState> {
  OwnerManagementCubit(this._repository)
      : super(OwnerManagementState.loading());
  final OwnerRepository _repository;

  //Function to fetch all owners
  Future<void> fetchOwners() async {
    emit(OwnerManagementState.loading());
    try {
      final owners = await _repository.fetchAllOwners();

      emit(OwnerManagementState.loaded(owners));
    } catch (e) {
      emit(OwnerManagementState.error(e.toString()));
    }
  }

  //Function to block or unblock owner
  Future<void> blockUnblockOwner(String ownerId, bool isBlocked) async {
    emit(OwnerManagementState.loading());
    try {
      await _repository.blockUnblockOwner(ownerId, isBlocked);
      final owners = await _repository.fetchAllOwners();
      emit(OwnerManagementState.loaded(owners));
    } catch (e) {
      emit(OwnerManagementState.error(e.toString()));
    }
  }
}
