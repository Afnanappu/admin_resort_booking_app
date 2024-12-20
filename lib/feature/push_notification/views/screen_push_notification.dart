import 'package:flutter/material.dart';

class PushNotificationPage extends StatelessWidget {
  const PushNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Push Notification Content',
            style: Theme.of(context).textTheme.headlineMedium));
  }
}
