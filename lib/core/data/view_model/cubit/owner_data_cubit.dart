import 'package:admin_resort_booking_app/core/data/models/owner_model.dart';
import 'package:admin_resort_booking_app/core/data/repository/owner_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OwnerDataCubit extends Cubit<OwnerModel?> {
  final OwnerRepository _repository;
  OwnerDataCubit(this._repository) : super(null);

  Future<void> fetchOwnerData(String ownerId) async {
    final user = await _repository.fetchOwnerData(ownerId);
    emit(user);
  }

  void setUser(OwnerModel ownerModel) {
    emit(ownerModel);
  }
}
