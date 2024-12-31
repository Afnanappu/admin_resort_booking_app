import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    this.width,
    this.onPressed,
    this.backgroundColor,
  });
  final String text;
  final double? width;
  final void Function()? onPressed;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Text(
          text,
          style: MyTextStyles.titleMediumSemiBoldWhite,
        ),
        style: ElevatedButton.styleFrom(
          // padding:
          //     EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRad10),
          ),
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
