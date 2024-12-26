import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:admin_resort_booking_app/core/constants/spaces.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/views/widgets/action_buttons_for_request_details_screen.dart';
import 'package:admin_resort_booking_app/feature/requests/views/widgets/document_tile_for_request_details_screen.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';

class OwnerRequestScreen extends StatelessWidget {
  final String uid;
  final String ownerId;
  final String name;
  final String email;
  final bool isVerified;
  final String? profilePicture;
  final List<DocumentModel> personalProof;

  const OwnerRequestScreen({
    super.key,
    required this.uid,
    required this.ownerId,
    required this.name,
    required this.email,
    required this.isVerified,
    this.profilePicture,
    required this.personalProof,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Owner Verification',
      //     style: TextStyle(color: MyColors.white),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: MyColors.orange,
      // ),
      body: BlocListener<OwnerRequestBloc, OwnerRequestState>(
        listener: (context, state) {
          state.maybeWhen(
            requestedAccepted: () {
              showCustomSnackBar(
                context: context,
                message: 'Owner request accepted',
                bgColor: MyColors.success,
              );
            },
            requestedRejected: () {
              showCustomSnackBar(
                context: context,
                message: 'Owner request rejected',
                bgColor: MyColors.grey,
              );
              context.go('/${AppRoutes.request}');
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MySpaces.hSpace20,
              Center(
                child: Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.orange),
                    borderRadius: BorderRadius.circular(borderRad10),
                  ),
                  child: ListView(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: profilePicture != null
                            ? MemoryImage(base64Decode(profilePicture!))
                            : const AssetImage(
                                'assets/icons/boss.png',
                              ),
                      ),
                      MySpaces.hSpace10,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Name:',
                                  style: MyTextStyles.titleLargeSemiBoldBlack,
                                ),
                                Text(
                                  name,
                                  style: MyTextStyles.titleLargeSemiBoldBlack,
                                ),
                              ],
                            ),
                            MySpaces.hSpace20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Email:',
                                  style: MyTextStyles.titleLargeSemiBoldBlack,
                                ),
                                Text(
                                  email,
                                  style: MyTextStyles.titleLargeSemiBoldBlack,
                                ),
                              ],
                            ),
                            MySpaces.hSpace20,
                            ...List.generate(
                              personalProof.length,
                              (index) {
                                return DocumentTileForRequestDetailsScreen(
                                  document: personalProof[index],
                                );
                              },
                            ),
                            MySpaces.hSpace20,
                            ActionButtonsForRequestDetailsScreen(
                                name: name,
                                email: email,
                                ownerId: ownerId,
                                uid: uid),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
