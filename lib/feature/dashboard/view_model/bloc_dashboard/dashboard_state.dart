part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.error(String error) = _Error;
  const factory DashboardState.loaded(DashboardModel products) = _Loaded;
}
