// import 'package:flutter/material.dart';

// class PushNotificationPage extends StatelessWidget {
//   const PushNotificationPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Push Notification Content',
//             style: Theme.of(context).textTheme.headlineMedium));
//   }
// }

import 'package:admin_resort_booking_app/core/components/custom_elevated_normal_button.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:flutter/material.dart';

class PushNotificationPage extends StatefulWidget {
  const PushNotificationPage({super.key});

  @override
  State<PushNotificationPage> createState() => _PushNotificationPageState();
}

class _PushNotificationPageState extends State<PushNotificationPage> {
  final TextEditingController _messageController = TextEditingController();
  String _selectedRecipient = 'User';
  final List<String> _recipients = ['User', 'Owner', 'Both'];
  void _sendNotification() {
    String message = _messageController.text.trim();
    if (message.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a message')),
      );
      return;
    }

    // Handle sending notification logic here
    print('Sending notification to: $_selectedRecipient');
    print('Message: $message');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Notification sent to $_selectedRecipient')),
    );

    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Send Notification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Recipient:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: _selectedRecipient,
              items: _recipients.map((String recipient) {
                return DropdownMenuItem<String>(
                  value: recipient,
                  child: Text(recipient),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedRecipient = value!;
                });
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.orange,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.orange,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Message:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _messageController,
              maxLines: 3,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.orange,
                  ),
                ),
                border: OutlineInputBorder(),
                hintText: 'Enter your message here...',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedNormalButton(
                  bgColor: MyColors.orange,
                  onPressed: () {
                    //TODO: Sent notificaiton
                    _sendNotification();
                  },
                  text: 'Send Notification',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
