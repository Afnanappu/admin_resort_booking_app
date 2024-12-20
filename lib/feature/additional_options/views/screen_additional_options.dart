import 'package:flutter/material.dart';

class AdditionalOptionsPage extends StatelessWidget {
  const AdditionalOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Additional Options Content',
            style: Theme.of(context).textTheme.headlineMedium));
  }
}
