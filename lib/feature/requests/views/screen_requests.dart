import 'package:admin_resort_booking_app/feature/requests/views/tab_bar_view_owner_request.dart';
import 'package:admin_resort_booking_app/feature/requests/views/tab_bar_view_property_request.dart';
import 'package:flutter/material.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black12,
                ),
              ),
              color: const Color(0xFFFFE4D9),
            ),
            child: const TabBar(
              tabs: [
                Tab(text: 'Owner'),
                Tab(text: 'Property'),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                ScreenOwnerRequest(),
                ScreenPropertyRequest(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
