part of 'user_management_cubit.dart';

@freezed
class UserManagementState with _$UserManagementState {
  const factory UserManagementState.loading() = _Loading;
  const factory UserManagementState.loaded(List<UserModel> users) = _Loaded;
  const factory UserManagementState.error(String error) = _Error;
  
}
