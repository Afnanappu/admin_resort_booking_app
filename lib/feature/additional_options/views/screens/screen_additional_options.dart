import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/screens/screen_manage_property_categories.dart';
import 'package:flutter/material.dart';

class AdditionalOptionsPage extends StatelessWidget {
  const AdditionalOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminDashboard();
  }
}

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int selectedIndex = 0;
  String selectedOption = 'Property Categories';

  List<Map<String, dynamic>> items = [];

  final List<String> options = [
    '',
    'Amenities',
    'Room Types',
  ];
  final optionsScreen = [
    ScreenManagePropertyCategories(),
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
                selectedOption = options[index];
              });
            },
            extended: true,
            indicatorColor: MyColors.scaffoldDefaultColor,
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
            ],
          ),
          // Main content
          Expanded(
            child: optionsScreen[selectedIndex],
          ),
        ],
      ),
    );
  }
}


//=========================================================




// void _showAddDialog() {
//   String imageUrl = '';
//   String name = '';
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('Add New $selectedOption'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             TextField(
//               onChanged: (value) {
//                 imageUrl = value;
//               },
//               decoration: InputDecoration(
//                 labelText: 'Image URL',
//               ),
//             ),
//             TextField(
//               onChanged: (value) {
//                 name = value;
//               },
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 items.add({'imageUrl': imageUrl, 'name': name});
//               });
//               Navigator.of(context).pop();
//             },
//             child: Text('Add'),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: Text('Cancel'),
//           ),
//         ],
//       );
//     },
//   );
// }
