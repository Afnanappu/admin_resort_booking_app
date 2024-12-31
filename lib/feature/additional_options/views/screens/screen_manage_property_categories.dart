import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/components/elevated_button_for_add_option.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/components/list_tile_for_add_option.dart';
import 'package:flutter/material.dart';

class ScreenManagePropertyCategories extends StatelessWidget {
  ScreenManagePropertyCategories({
    super.key,
  });
  final title = 'Property Categories';
  final List<Map<String, dynamic>> items = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Manage $title',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: MyColors.orange,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButtonForAddOptions(
            title: title,
            onPressed: () {},
          ),
          SizedBox(height: 30),
          // Simple List of Items
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListItemForAddOptions(
                  item: items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
