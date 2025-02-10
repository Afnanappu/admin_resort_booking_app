import 'package:admin_resort_booking_app/feature/push_notification/services/notification_service.dart';
import 'package:admin_resort_booking_app/feature/push_notification/views/screen_push_notification.dart';

class NotificationRepository {
  final NotificationService _service;

  NotificationRepository({
    required NotificationService service,
  }) : _service = service;

  Future<void> sendNotification({
    required Recipient recipient,
    required String title,
    required String content,
  }) async {
    try {
      await _service.sendNotification(
        recipient: recipient,
        title: title,
        content: content,
      );
    } catch (e) {
      rethrow;
    }
  }
}
