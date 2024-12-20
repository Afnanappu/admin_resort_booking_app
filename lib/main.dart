import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:admin_resort_booking_app/feature/home/views/screen_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ResortAdminApp());
}

class ResortAdminApp extends StatelessWidget {
  const ResortAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resort Admin Panel',
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.scaffoldDefaultColor,
        primaryColor: MyColors.orange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRad10),
            ),
          ),
        ),
      ),
      home: const AdminDashboard(),
    );
  }
}
