import 'package:flutter/material.dart';

class UserManagementPage extends StatelessWidget {
  const UserManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('User Management Content',
            style: Theme.of(context).textTheme.headlineMedium));
  }
}
