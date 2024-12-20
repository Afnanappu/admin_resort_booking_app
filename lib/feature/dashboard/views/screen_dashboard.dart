import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Dashboard Content',
            style: Theme.of(context).textTheme.headlineMedium));
  }
}
