import 'dart:convert';
import 'package:admin_resort_booking_app/core/components/custom_elevated_normal_button.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/data/models/owner_model.dart';
import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/cubit/cubit_owner_management/owner_management_cubit.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/screens/screen_owner_details.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OwnerManagementTile extends StatelessWidget {
  final OwnerModel owner;

  const OwnerManagementTile({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: () {
          //TODO: navigate to owner details page

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ScreenOwnerDetails(
                owner: owner,
              ),
            ),
          );

          //context.push('/${AppRoutes.requestOwnerDetails}');
        },
        leading: CircleAvatar(
          backgroundImage: owner.profilePicture == null
              ? NetworkImage('https://via.placeholder.com/150')
              : MemoryImage(
                  base64Decode(
                    owner.profilePicture!,
                  ),
                ),
        ),
        title: Text(owner.name,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(owner.email),
            Text(
              'Created: ${owner.createdAt != null ? customDateFormatWithTime(owner.createdAt!) : 'N/A'}',
            ),
          ],
        ),
        trailing: BlocBuilder<OwnerManagementCubit, OwnerManagementState>(
          builder: (context, state) {
            return CustomElevatedNormalButton(
              bgColor: owner.isBlocked
                  ? MyColors.orange
                  : MyColors.scaffoldDefaultColor,
              isOutlined: !owner.isBlocked,
              onPressed: () {
                context
                    .read<OwnerManagementCubit>()
                    .blockUnblockOwner(owner.uid!, !owner.isBlocked);
              },
              text: owner.isBlocked ? 'Unblock' : 'Block',
            );
          },
        ),
      ),
    );
  }
}
