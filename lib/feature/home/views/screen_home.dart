import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeWithSideRail extends StatelessWidget {
  const HomeWithSideRail({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;
  final padding = 8.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: MediaQuery.of(context).size.width > 800,
            backgroundColor: MyColors.orangeShade600,
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: (index) {
              navigationShell.goBranch(
                index,
              );
            },
            destinations: [
              NavigationRailDestination(
                padding: EdgeInsets.all(padding),
                icon: Icon(Icons.dashboard),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.all(padding),
                icon: Icon(Icons.people),
                label: Text('Users'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.all(padding),
                icon: Icon(Icons.apartment),
                label: Text('Owners'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.all(padding),
                icon: Icon(Icons.request_page),
                label: Text('Requests'),
              ),
              // NavigationRailDestination(
              //   icon: Icon(Icons.bar_chart),
              //   label: Text('Reports'),
              // ),
              NavigationRailDestination(
                padding: EdgeInsets.all(padding),
                icon: Icon(Icons.notifications),
                label: Text('Notifications'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.all(padding),
                icon: Icon(Icons.post_add),
                label: Text('Issues'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.all(padding),
                icon: Icon(Icons.settings),
                label: Text('Additional Options'),
              ),
            ],
            indicatorColor: MyColors.orangeBackgroundDark,
            selectedLabelTextStyle:
                MyTextStyles.bodyLargeNormalWhite.copyWith(fontSize: 20),
            unselectedLabelTextStyle:
                MyTextStyles.bodyLargeNormalWhite.copyWith(fontSize: 18),
          ),
          Expanded(
            child: navigationShell,
          ),
        ],
      ),
    );
  }
}
