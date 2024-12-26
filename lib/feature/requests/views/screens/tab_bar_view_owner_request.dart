import 'package:admin_resort_booking_app/core/components/custom_circular_progress_indicator.dart';
import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/views/screens/screen_owner_request_details.dart';
import 'package:admin_resort_booking_app/feature/requests/views/widgets/owner_request_tile.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScreenOwnerRequest extends StatelessWidget {
  const ScreenOwnerRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
      child: BlocConsumer<OwnerRequestBloc, OwnerRequestState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (error) {
              showCustomSnackBar(context: context, message: error);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Center(child: CustomCircularProgressIndicator()),
            error: (error) => UnconstrainedBox(
              child: Center(
                child: Text(
                  error,
                  style: MyTextStyles.titleMediumSemiBoldBlack,
                ),
              ),
            ),
            success: (ownerList) {
              return ownerList.isNotEmpty
                  ? ListView.builder(
                      itemCount: ownerList.length,
                      itemBuilder: (context, index) {
                        final owner = ownerList[index];
                        return OwnerRequestTile(
                          title: owner.name,
                          email: owner.email,
                          profile: owner.profilePicture,
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => OwnerRequestScreen(
                            //         uid: owner.uid,
                            //         ownerId: owner.ownerId,
                            //         name: owner.name,
                            //         email: owner.email,
                            //         isVerified: owner.isVerified,
                            //         personalProof: owner.personalProof),
                            //   ),
                            // );
                            GoRouter.of(context).go(
                              '/${AppRoutes.request}/${AppRoutes.requestOwnerDetails}',
                              extra: owner,
                            );
                            // print('worked');
                          },
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'No Request',
                        style: MyTextStyles.titleMediumSemiBoldBlack,
                      ),
                    );
            },
            orElse: () => Center(
              child: Text(
                '',
                style: MyTextStyles.titleMediumSemiBoldBlack,
              ),
            ),
          );
        },
      ),
    );
  }
}
