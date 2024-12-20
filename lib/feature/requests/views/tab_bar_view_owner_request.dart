import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/feature/requests/widgets/owner_request_tile.dart';
import 'package:flutter/material.dart';

class ScreenOwnerRequest extends StatelessWidget {
  const ScreenOwnerRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150),
      child: ListView(
        children: [
          OwnerRequestTile(
            title: 'AFNAN P',
            email: 'afnan@gmail.com',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
