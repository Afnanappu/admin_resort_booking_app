import 'dart:convert';
import 'dart:developer';
import 'package:admin_resort_booking_app/feature/push_notification/views/screen_push_notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

import 'package:admin_resort_booking_app/core/constants/url.dart';

class NotificationService {
  //Function to set notification to user or owner or both of them
  Future<void> sendNotification({
    required Recipient recipient,
    required String title,
    required String content,
  }) async {
//Demo json
//{
//   "ids":["oyHECgmQAcacbjXANu73uwGW6lz1","3zgkwahBluZR5WKQWb9splJxk1V2"],
//   "title":"✅ New Booking Received",
//   "body":"📍 AFNAAN P has booked Ganga Resort from 10/01/25 to 16/01/25.",
//   "collection":"owners"
// }
    const url = NOTIFICATION_BULK_URL;

    var ids = await getRecipientsIds(recipient);
    List<String>? userIds;
    List<String>? ownerIds;
    if (ids != null) {
      final collection = recipient == Recipient.user ? 'users' : 'owners';
      final body = {
        "ids": ids,
        "title": title,
        "body": content,
        "collection": collection,
      };

      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: {
          "Content-Type": "application/json",
        },
      );

      final status = response.statusCode;
      if (status == 200) {
        log('Bulk notification is sended. \n${jsonDecode(response.body)}');
      } else {
        log('Notification failed with status $status');
        log(response.body.isNotEmpty
            ? jsonDecode(response.body)['error']
            : 'No error message');
      }
    } else {
      userIds = await getRecipientsIds(Recipient.user);
      ownerIds = await getRecipientsIds(Recipient.owner);

      final bodyUser = {
        "ids": userIds,
        "title": title,
        "body": content,
        "collection": 'users',
      };
      final bodyOwner = {
        "ids": ownerIds,
        "title": title,
        "body": content,
        "collection": 'owners',
      };

      final responseUser = await http.post(
        Uri.parse(url),
        body: jsonEncode(bodyUser),
        headers: {
          "Content-Type": "application/json",
        },
      );
      final responseOwner = await http.post(
        Uri.parse(url),
        body: jsonEncode(bodyOwner),
        headers: {
          "Content-Type": "application/json",
        },
      );

      final status1 = responseUser.statusCode;
      final status2 = responseOwner.statusCode;
      if (status1 == 200) {
        log('Bulk User notification is sended. \n${jsonDecode(responseUser.body)}');
      } else {
        log('Notification failed with status $status1');
        log(responseUser.body.isNotEmpty
            ? jsonDecode(responseUser.body)['error']
            : 'No error message');
      }
      if (status2 == 200) {
        log('Bulk Owner notification is sended. \n${jsonDecode(responseOwner.body)}');
      } else {
        log('Notification failed with status $status2');
        log(responseOwner.body.isNotEmpty
            ? jsonDecode(responseOwner.body)['error']
            : 'No error message');
      }
    }
  }

  Future<List<String>?> getRecipientsIds(Recipient recipient) async {
    if (recipient case Recipient.user) {
      final usersData =
          await FirebaseFirestore.instance.collection('users').get();
      return usersData.docs
          .map(
            (e) => e.id,
          )
          .toList();
    } else if (recipient case Recipient.owner) {
      final ownerData =
          await FirebaseFirestore.instance.collection('owners').get();
      return ownerData.docs
          .map(
            (e) => e.id,
          )
          .toList();
    } else {
      return null;
    }
  }

  ///Sent notification to the person with uid and uses the token in from his document for sending notification
  // Future<void> sendNotification({
  //   required String uid,
  //   required String title,
  //   required String content,
  //   required String collection,
  //   Map<String, dynamic>? payload,
  // }) async {
  //   const url = NOTIFICATION_SINGLE_URL;
  //   try {
  //     final body = {
  //       "uid": uid,
  //       "title": title,
  //       "body": content,
  //       "collection": collection,
  //       if (payload != null) "data": payload
  //     };
  //     log(jsonEncode(body));
  //     final response = await http.post(
  //       Uri.parse(url),
  //       body: jsonEncode(body),
  //       headers: {
  //         "Content-Type":
  //             "application/json", // Important header for JSON requests
  //       },
  //     );
  //     final status = response.statusCode;
  //     log('Notification worked');
  //     if (status == 200) {
  //       log('notification is sended to the $uid\n${jsonDecode(response.body)}');
  //     } else {
  //       log('Notification failed with status $status');
  //       log(response.body.isNotEmpty
  //           ? jsonDecode(response.body)['error']
  //           : 'No error message');
  //     }
  //   } catch (e, stack) {
  //     log('Notification sending failed: $e');
  //     log(e.toString(), stackTrace: stack);
  //   }
  // }
}
