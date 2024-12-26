import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';

Future<bool> sendEmail(
    String name, String recipientEmail, String ownerId) async {
  try {
    final Uri params = Uri(
      scheme: 'mailto',
      path: recipientEmail,
      query: Uri.encodeFull(
        'subject=Contact from $name&body=Name: $name\nEmail: $recipientEmail\nMessage: Congratulations! You have successfully registered.\n\n'
        'Use the following Owner ID to log in: $ownerId',
      ),
    );
    final isSent = await launchUrl(params);
    log('Email sent');
    return isSent;
  } catch (e, stack) {
    log(e.toString(), stackTrace: stack);
    throw 'Error while sending mail: $e';
  }
}
