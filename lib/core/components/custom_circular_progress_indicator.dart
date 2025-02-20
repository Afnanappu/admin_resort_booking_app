import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      backgroundColor: MyColors.orange,
      valueColor: AlwaysStoppedAnimation(MyColors.orangeBackground),
    );
  }
}
