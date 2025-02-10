import 'package:admin_resort_booking_app/core/components/custom_elevated_normal_button.dart';
import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/feature/push_notification/view_model/cubit/cubit/push_notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PushNotificationPage extends StatefulWidget {
  const PushNotificationPage({super.key});

  @override
  State<PushNotificationPage> createState() => _PushNotificationPageState();
}

class _PushNotificationPageState extends State<PushNotificationPage> {
  final TextEditingController _messageController = TextEditingController();
  Recipient _selectedRecipient = Recipient.user;
  void _sendNotification() {
    String message = _messageController.text.trim();
    if (message.isEmpty) {
      showCustomSnackBar(
        context: context,
        message: 'Please enter a message',
        bgColor: MyColors.grey,
      );
      return;
    }

    context.read<PushNotificationCubit>().sendNotification(
          recipient: _selectedRecipient,
          title: 'Notification from admin',
          content: message,
        );
    // Handle sending notification logic here
    print('Sending notification to: $_selectedRecipient');
    print('Message: $message');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Send Notification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocListener<PushNotificationCubit, PushNotificationState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (error) {
                showCustomSnackBar(
                  context: context,
                  message: error,
                );
              },
              received: () {
                showCustomSnackBar(
                  context: context,
                  message: 'Notification sent to ${_selectedRecipient.name}',
                  bgColor: MyColors.success,
                );
                _messageController.clear();
              },
              orElse: () {},
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Recipient:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              DropdownButtonFormField<Recipient>(
                value: _selectedRecipient,
                items: Recipient.values.map((recipient) {
                  return DropdownMenuItem<Recipient>(
                    value: recipient,
                    child: Text(recipient.name),
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
                  BlocBuilder<PushNotificationCubit, PushNotificationState>(
                    builder: (context, state) {
                      bool isLoading = state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );
                      return CustomElevatedNormalButton(
                        bgColor: MyColors.orange,
                        onPressed: _sendNotification, //To send notification
                        text: 'Send Notification',
                        isLoading: isLoading,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Recipient { user, owner, both }

extension RecipientExtension on Recipient {
  String get name {
    switch (this) {
      case Recipient.user:
        return 'User';
      case Recipient.owner:
        return 'Owner';
      case Recipient.both:
        return 'Both';
    }
  }
}
