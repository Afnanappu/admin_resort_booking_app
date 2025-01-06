import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/screens/screen_manage_options.dart';
import 'package:flutter/material.dart';

class AdditionalOptionsPage extends StatefulWidget {
  const AdditionalOptionsPage({super.key});

  @override
  State<AdditionalOptionsPage> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdditionalOptionsPage> {
  int selectedIndex = 0;
  final List<String> options = [
    'Property Categories',
    'Amenities',
    'Room Types',
    'Bed Types',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Navigation Rail
          NavigationRail(
            selectedIndex: selectedIndex,
            backgroundColor: MyColors.orangeBackground,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
                // selectedOption = options[index];
              });
            },
            extended: true,
            indicatorColor: MyColors.scaffoldDefaultColor,
            useIndicator: false,
            selectedLabelTextStyle: TextStyle(color: MyColors.orange),
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                label: Text(options[0]),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                label: Text(options[1]),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                label: Text(options[2]),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                label: Text(options[3]),
              ),
            ],
          ),
          // Main content
          Expanded(
            child: ScreenManageOptions(
              title: options[selectedIndex],
              index: selectedIndex,
            ),
          ),
        ],
      ),
    );
  }
}
