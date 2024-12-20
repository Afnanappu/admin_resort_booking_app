import 'package:admin_resort_booking_app/feature/additional_options/views/screen_additional_options.dart';
import 'package:admin_resort_booking_app/feature/dashboard/views/screen_dashboard.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/views/screen_issue_posting.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/screen_owner_management.dart';
import 'package:admin_resort_booking_app/feature/push_notification/views/screen_push_notification.dart';
import 'package:admin_resort_booking_app/feature/requests/views/screen_requests.dart';
import 'package:admin_resort_booking_app/feature/revenue_management/views/screen_revenue_management.dart';
import 'package:admin_resort_booking_app/feature/user_management/views/screen_user_management.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardPage(),
    const UserManagementPage(),
    const OwnerManagementPage(),
    const RequestPage(),
    const RevenueReportPage(),
    const PushNotificationPage(),
    const IssuePostingPage(),
    const AdditionalOptionsPage(),
  ];

  final List<String> _pageTitles = [
    "Dashboard",
    "User Management",
    "Owner Management",
    "Requests",
    "Revenue & Reports",
    "Push Notifications",
    "Issue Posting",
    "Additional Options",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFB6E34),
        title: Text(_pageTitles[_selectedIndex],
            style: const TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            backgroundColor: const Color(0xFFFFE4D9),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people),
                label: Text('Users'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.apartment),
                label: Text('Owners'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.request_page),
                label: Text('Requests'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bar_chart),
                label: Text('Reports'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.notifications),
                label: Text('Notifications'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.post_add),
                label: Text('Issues'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Options'),
              ),
            ],
            selectedLabelTextStyle: const TextStyle(color: Color(0xFFFB6E34)),
            unselectedLabelTextStyle: const TextStyle(color: Color(0xFF8B8A8A)),
          ),
          Expanded(
            child: _pages[_selectedIndex], 
          ),
        ],
      ),
    );
  }
}
