part of 'push_notification_cubit.dart';

@freezed
class PushNotificationState with _$PushNotificationState {
  const factory PushNotificationState.initial() = _Initial;
  const factory PushNotificationState.loading() = _Loading;
  const factory PushNotificationState.received() = _Received;
  const factory PushNotificationState.error(String error) = _Error;
}
