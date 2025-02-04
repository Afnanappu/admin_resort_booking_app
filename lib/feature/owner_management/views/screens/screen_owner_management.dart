import 'package:admin_resort_booking_app/feature/owner_management/view_model/cubit/cubit_owner_management/owner_management_cubit.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/widgets/owner_management_shimmer.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/widgets/owner_management_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OwnerManagementPage extends StatelessWidget {
  const OwnerManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context.read<OwnerManagementCubit>().fetchOwners();
      },
    );
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Resort Owners',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          BlocBuilder<OwnerManagementCubit, OwnerManagementState>(
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
                        const OwnerManagementShimmer(),
                  ),
                ),
                loaded: (owners) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: owners.length,
                      itemBuilder: (context, index) {
                        final owner = owners[index];
                        return OwnerManagementTile(owner: owner);
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
