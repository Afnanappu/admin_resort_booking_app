part of 'owner_management_cubit.dart';

@freezed
class OwnerManagementState with _$OwnerManagementState {
  const factory OwnerManagementState.loading() = _Loading;
  const factory OwnerManagementState.loaded(List<OwnerModel> owners) = _Loaded;
  const factory OwnerManagementState.error(String error) = _Error;
}
