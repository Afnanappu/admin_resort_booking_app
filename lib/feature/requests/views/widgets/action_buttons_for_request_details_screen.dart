import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/core/utils/send_email.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtonsForRequestDetailsScreen extends StatelessWidget {
  const ActionButtonsForRequestDetailsScreen({
    super.key,
    required this.name,
    required this.email,
    required this.ownerId,
    required this.uid,
  });

  final String name;
  final String email;
  final String ownerId;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerRequestBloc, OwnerRequestState>(
      builder: (context, state) {
        return state.maybeWhen(
          requestedAccepted: () {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    //   context
                    //       .read<OwnerRequestBloc>()
                    //       .add(OwnerRequestEvent.approveOwner(uid));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.orange,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  label: Text(
                    'Approved',
                    style: MyTextStyles.bodyLargeNormalWhite,
                  ),
                ),
              ],
            );
          },
          orElse: () {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    // Approve logic
                    final isSent = await sendEmail(name, email, ownerId);
                    if (isSent) {
                      context.read<OwnerRequestBloc>().add(
                            OwnerRequestEvent.approveOwner(uid),
                          );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.orange,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRad10)),
                  ),
                  icon: const Icon(
                    Icons.check,
                    color: MyColors.white,
                  ),
                  label: Text(
                    'Approve',
                    style: MyTextStyles.bodyLargeNormalWhite,
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    context
                        .read<OwnerRequestBloc>()
                        .add(OwnerRequestEvent.rejectOwner(uid));
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRad10)),
                    side: const BorderSide(color: Colors.red),
                  ),
                  icon: const Icon(Icons.close, color: Colors.red),
                  label: const Text(
                    'Reject',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
