import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeWithSideRail extends StatelessWidget {
  HomeWithSideRail({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  // final List<Widget> _pages = [
  //   const DashboardPage(),
  //   const UserManagementPage(),
  //   const OwnerManagementPage(),
  //   const RequestPage(),
  //   const RevenueReportPage(),
  //   const PushNotificationPage(),
  //   const IssuePostingPage(),
  //   const AdditionalOptionsPage(),
  // ];

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
        title: Text(_pageTitles[navigationShell.currentIndex],
            style: const TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Row(
        children: [
          NavigationRail(
            extended: MediaQuery.of(context).size.width > 800,
            backgroundColor: const Color(0xFFFFE4D9),
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: (index) {
              navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              );
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
            child: navigationShell,
          ),
        ],
      ),
    );
  }
}
