import 'dart:convert';
import 'dart:developer';

import 'package:admin_resort_booking_app/core/constants/url.dart';
import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

class OwnerRequestService {
  final ownerCollection = FirebaseFirestore.instance.collection('owners');

  Future<List<Map<String, dynamic>>>
      fetchUnVerifiedOwnerDataFromFirebase() async {
    try {
      final owners =
          await ownerCollection.where('isVerified', isEqualTo: false).get();
      return owners.docs.map(
        (e) {
          return e.data();
        },
      ).toList();
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleGenericException(e);
    }
  }

  Future<void> approveOwnerRequest({
    required String uid,
    required String ownerId,
    required String email,
    required String ownerName,
  }) async {
    try {
      final url = MAIL_URL;

      final json = jsonEncode({
        "to": email,
        "subject": "Welcome to StayScape!",
        "text":
            "Dear $ownerName,\n\nCongratulations! Your resort registration has been successfully approved on StayScape. You can now log in to your dashboard to manage your listings, update details, and start receiving bookings.\n\nYour Owner ID: $ownerId\n\nPlease keep this ID for future reference.\n\nIf you need any assistance, our support team is always here to help.\n\nWelcome to StayScape - we're excited to have you on board!\n\nBest regards,\nThe StayScape Team",
        "html":
            "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><title>Your Resort Registration is Approved - Welcome to StayScape!</title><style>body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 20px; } .container { max-width: 600px; background: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); margin: auto; } .header { text-align: center; font-size: 22px; font-weight: bold; color: #333; } .content { font-size: 16px; color: #555; line-height: 1.6; margin-top: 20px; } .owner-id { font-size: 18px; font-weight: bold; color: #d35400; text-align: center; margin: 20px 0; } .footer { text-align: center; margin-top: 20px; font-size: 14px; color: #888; } .button { display: inline-block; padding: 12px 20px; font-size: 16px; color: #fff; background-color: #3498db; text-decoration: none; border-radius: 5px; margin-top: 20px; } .button:hover { background-color: #2980b9; }</style></head><body><div class=\"container\"><div class=\"header\">Your Resort Registration is Approved - Welcome to StayScape!</div><div class=\"content\"><p>Dear <strong>$ownerName</strong>,</p><p>Congratulations! Your resort registration has been successfully approved on StayScape. You can now log in to your dashboard to manage your listings, update details, and start receiving bookings.</p><div class=\"owner-id\">Your Owner ID: <strong>$ownerId</strong></div><p>Please keep this ID for future reference.</p><p>If you need any assistance, our support team is always here to help.</p><p>Welcome to StayScape - we're excited to have you on board!</p></div><div class=\"footer\">Best regards,<br>The StayScape Team</div></div></body></html>"
      });

      final response = await http.post(
        Uri.parse(url),
        body: json,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      final body = jsonDecode(response.body) as Map<String, dynamic>;
      if (body['success'] == true) {
        await ownerCollection.doc(uid).update({
          'isVerified': true,
        });
        log('Mail sended successfully to $email');
      } else {
        throw 'An Error occurred while sending the mail, please try later';
      }
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }

  Future<void> rejectOwnerRequest({
    required String uid,
    required String ownerId,
    required String email,
    required String ownerName,
  }) async {
    try {
      final url = MAIL_URL;

      final json = jsonEncode({
        "to": email,
        "subject": "Your Resort Registration Request - Status Update",
        "text":
            "Dear $ownerName,\n\nWe regret to inform you that your resort registration request on StayScape has not been approved at this time.\n\nIf you believe this was a mistake or need further clarification, please contact our support team.\n\nWe appreciate your interest in StayScape and encourage you to apply again in the future.\n\nBest regards,\nThe StayScape Team",
        "html":
            "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><title>Your Resort Registration Request - Status Update</title><style>body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 20px; } .container { max-width: 600px; background: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); margin: auto; } .header { text-align: center; font-size: 22px; font-weight: bold; color: #c0392b; } .content { font-size: 16px; color: #555; line-height: 1.6; margin-top: 20px; } .footer { text-align: center; margin-top: 20px; font-size: 14px; color: #888; } .button { display: inline-block; padding: 12px 20px; font-size: 16px; color: #fff; background-color: #e74c3c; text-decoration: none; border-radius: 5px; margin-top: 20px; } .button:hover { background-color: #c0392b; }</style></head><body><div class=\"container\"><div class=\"header\">Your Resort Registration Request - Status Update</div><div class=\"content\"><p>Dear <strong>$ownerName</strong>,</p><p>We regret to inform you that your resort registration request on StayScape has not been approved at this time.</p><p>If you believe this was a mistake or need further clarification, please contact our support team.</p><p>We appreciate your interest in StayScape and encourage you to apply again in the future.</p></div><div class=\"footer\">Best regards,<br>The StayScape Team</div></div></body></html>"
      });

      final response = await http.post(
        Uri.parse(url),
        body: json,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      final body = jsonDecode(response.body) as Map<String, dynamic>;
      if (body['success'] == true) {
        // await ownerCollection.doc(uid).update({
        //   'isVerified': false,
        // });
        log('Mail sended successfully to $email');
      } else {
        throw 'An Error occurred while sending the mail, please try later';
      }
    } on FirebaseException catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw AppExceptionHandler.handleFirestoreException(e);
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      rethrow;
    }
  }
}
