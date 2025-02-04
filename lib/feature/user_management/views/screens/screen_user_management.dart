import 'package:admin_resort_booking_app/feature/user_management/view_model/cubit/cubit_user_management/user_management_cubit.dart';
import 'package:admin_resort_booking_app/feature/user_management/views/widgets/user_management_shimmer.dart';
import 'package:admin_resort_booking_app/feature/user_management/views/widgets/user_management_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserManagementPage extends StatelessWidget {
  const UserManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context.read<UserManagementCubit>().fetchUsers();
      },
    );
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Users',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          BlocBuilder<UserManagementCubit, UserManagementState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Center(
                  child: Text('An unexpected error occurred'),
                ),
                error: (error) => Center(
                  child: Text(error),
                ),
                loading: () => Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) =>
                        const UserManagementShimmer(),
                  ),
                ),
                loaded: (users) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        return UserManagementTile(user: user);
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
