import 'package:admin_resort_booking_app/core/components/icon_text_widget.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CustomListPointsWidgetForPropertyDetails extends StatelessWidget {
  const CustomListPointsWidgetForPropertyDetails({
    super.key,
    required this.title,
    required this.details,
  });

  final String title;
  final List<String> details;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          title,
          style: MyTextStyles.titleSmallSemiBoldBlack,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
          ),
          child: Column(
            spacing: 8,
            children: details
                .map(
                  (item) => IconTextWidget(
                    icon: Icon(
                      Icons.circle,
                      size: 6,
                    ),
                    text: Expanded(child: Text(item)),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
