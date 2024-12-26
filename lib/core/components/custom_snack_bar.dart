import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

void showCustomSnackBar({
  required BuildContext context,
  required String message,
  Color bgColor = MyColors.error,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: bgColor,
      dismissDirection: DismissDirection.down,
      margin: EdgeInsets.only(
          left: MyScreenSize.width - 350, bottom: 30, right: 20),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
