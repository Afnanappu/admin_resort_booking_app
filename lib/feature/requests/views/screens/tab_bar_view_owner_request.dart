import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/core/utils/screen_size.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/views/widgets/owner_request_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOwnerRequest extends StatelessWidget {
  const ScreenOwnerRequest({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<OwnerRequestBloc>().add(OwnerRequestEvent.fetchOwners());
      },
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Section
        AppBar(
          title: Text("Owner Requests"),
        ),

        // Main Content
        Expanded(
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
                loading: () => const Center(
                  child: Text('Loading...'),
                ),
                error: (error) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline, color: Colors.red, size: 48),
                      const SizedBox(height: 10),
                      Text(
                        error,
                        style: MyTextStyles.titleMediumSemiBoldBlack,
                      ),
                    ],
                  ),
                ),
                success: (ownerList) {
                  return ownerList.isNotEmpty
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MyScreenSize.width * .1,
                            vertical: 20,
                          ),
                          child: ListView.separated(
                            itemCount: ownerList.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 10),
                            itemBuilder: (context, index) {
                              final owner = ownerList[index];
                              return OwnerRequestCard(owner: owner);
                            },
                          ),
                        )
                      : Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.inbox, size: 48, color: Colors.grey),
                              const SizedBox(height: 10),
                              Text(
                                'No Requests',
                                style: MyTextStyles.titleMediumSemiBoldBlack,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'There are no owner requests at the moment.',
                                style: MyTextStyles.bodySmallRegularGrey,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                },
                orElse: () => const Center(
                  child: Text('Something went wrong.'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
