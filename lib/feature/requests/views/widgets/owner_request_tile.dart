import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/feature/requests/model/request_owner_model.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/cubit/owner_request_data_cubit.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OwnerRequestCard extends StatelessWidget {
  const OwnerRequestCard({
    super.key,
    required this.owner,
  });

  final RequestOwnerModel owner;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(
              'https://media.istockphoto.com/id/1130884625/vector/user-member-vector-icon-for-ui-user-interface-or-profile-face-avatar-app-in-circle-design.jpg?s=612x612&w=0&k=20&c=1ky-gNHiS2iyLsUPQkxAtPBWH1BZt0PKBB1WBtxQJRE='),
          backgroundColor: Colors.grey[200],
        ),
        title: Text(
          owner.name,
          style: MyTextStyles.titleMediumSemiBoldBlack,
        ),
        subtitle: Text(
          owner.email,
          style: MyTextStyles.bodySmallRegularGrey,
        ),
        trailing: ElevatedButton(
          onPressed: () {
            context.read<OwnerRequestDataCubit>().setOwnerData(owner);
            context
                .push("/${AppRoutes.request}/${AppRoutes.requestOwnerDetails}");
          },
          child: Text(
            "Details",
            style: MyTextStyles.bodyLargeNormalWhite,
          ),
        ),
      ),
    );
  }
}
