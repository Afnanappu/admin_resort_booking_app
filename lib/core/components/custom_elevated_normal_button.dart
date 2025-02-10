import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:flutter/material.dart';

class CustomElevatedNormalButton extends StatelessWidget {
  const CustomElevatedNormalButton({
    super.key,
    this.bgColor = MyColors.orange,
    this.isOutlined = false,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
  });

  final Color bgColor;
  final bool isOutlined;
  final VoidCallback onPressed;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          side: isOutlined
              ? BorderSide(
                  color: MyColors.orange,
                  width: 1.5,
                )
              : BorderSide.none,
          borderRadius: BorderRadius.circular(borderRad10),
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator.adaptive(
                  strokeWidth: 3.5,
                  valueColor:
                      AlwaysStoppedAnimation(MyColors.scaffoldDefaultColor),
                ),
              ),
            )
          : Text(
              text,
              style: TextStyle(
                color: !isOutlined ? MyColors.white : MyColors.orange,
              ),
            ),
    );
  }
}
