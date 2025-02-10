import 'package:admin_resort_booking_app/feature/push_notification/repository/notification_repository.dart';
import 'package:admin_resort_booking_app/feature/push_notification/views/screen_push_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_state.dart';
part 'push_notification_cubit.freezed.dart';

class PushNotificationCubit extends Cubit<PushNotificationState> {
  final NotificationRepository _repository;
  PushNotificationCubit(this._repository)
      : super(PushNotificationState.initial());

  Future<void> sendNotification({
    required Recipient recipient,
    required String title,
    required String content,
  }) async {
    emit(PushNotificationState.loading());
    try {
      await _repository.sendNotification(
        recipient: recipient,
        title: title,
        content: content,
      );

      emit(PushNotificationState.received());
    } catch (e) {
      emit(PushNotificationState.error(e.toString()));
    }
  }
}
