import 'dart:io';

import 'package:admin_resort_booking_app/core/constants/spaces.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class OwnerRequestTile extends StatelessWidget {
  const OwnerRequestTile({
    super.key,
    required this.title,
    required this.email,
    this.profile,
    this.onPressed,
  });
  final String title;
  final String email;
  final String? profile;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        margin: const EdgeInsets.all(10),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              MySpaces.flex1,
              Text(email),
              MySpaces.flex1
            ],
          ),
          leading: profile != null
              ? Image.file(File(profile!))
              : const Icon(
                  Icons.person,
                  color: Color(0xFFFB6E34),
                  size: 30,
                ),
          trailing: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              'Verify',
              style: MyTextStyles.bodyLargeNormalWhite,
            ),
          ),
        ),
      ),
    );
  }
}
