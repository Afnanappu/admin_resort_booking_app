import 'package:flutter/material.dart';

class OwnerManagementPage extends StatelessWidget {
  const OwnerManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Owner Management Content',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
