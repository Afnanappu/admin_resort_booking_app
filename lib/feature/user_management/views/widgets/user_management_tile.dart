import 'dart:convert';
import 'package:admin_resort_booking_app/core/components/custom_elevated_normal_button.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/data/models/user_model.dart';
import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/user_management/view_model/cubit/cubit_user_management/user_management_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserManagementTile extends StatelessWidget {
  final UserModel user;

  const UserManagementTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: user.profilePicture == null
              ? null
              : MemoryImage(
                  base64Decode(
                    user.profilePicture!,
                  ),
                ),
          child: user.profilePicture == null ? Icon(Icons.person) : null,
        ),
        title: Text(user.name,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.email),
            Text(
                'Created: ${user.createdAt != null ? customDateFormatWithTime(user.createdAt!) : 'N/A'}'),
          ],
        ),
        trailing: BlocBuilder<UserManagementCubit, UserManagementState>(
          builder: (context, state) {
            return CustomElevatedNormalButton(
              bgColor: user.isBlocked
                  ? MyColors.orange
                  : MyColors.scaffoldDefaultColor,
              isOutlined: !user.isBlocked,
              onPressed: () {
                context
                    .read<UserManagementCubit>()
                    .blockUnblockUser(user.uid!, !user.isBlocked);
              },
              text: user.isBlocked ? 'Unblock' : 'Block',
            );
          },
        ),
      ),
    );
  }
}
