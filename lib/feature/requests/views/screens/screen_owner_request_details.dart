import 'dart:convert';

import 'package:admin_resort_booking_app/feature/requests/model/request_owner_model.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/cubit/owner_request_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/views/widgets/action_buttons_for_request_details_screen.dart';
import 'package:admin_resort_booking_app/feature/requests/views/widgets/document_tile_for_request_details_screen.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';

// ignore: must_be_immutable
class OwnerRequestScreen extends StatelessWidget {
  RequestOwnerModel? ownerModel;
  OwnerRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ownerModel = context.read<OwnerRequestDataCubit>().state;
    if (ownerModel == null) {
      return Center(
        child: Text('Owner not found'),
      );
    }
    final String uid = ownerModel!.uid;
    final String ownerId = ownerModel!.ownerId;
    final String name = ownerModel!.name;
    final String email = ownerModel!.email;
    // final bool isVerified= ownerModel!.isVerified;
    final String? profilePicture = ownerModel!.profilePicture;
    final List<DocumentModel> personalProof = ownerModel!.personalProof;

    return Scaffold(
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth:
                        constraints.maxWidth > 600 ? 500 : constraints.maxWidth,
                  ),
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: profilePicture != null
                                ? MemoryImage(base64Decode(profilePicture))
                                : AssetImage('assets/icons/boss.png')
                                    as ImageProvider,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Owner Details',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          _buildDetailRow('Name', name),
                          _buildDetailRow('Email', email),
                          SizedBox(height: 20),
                          ...personalProof.map((document) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: DocumentTileForRequestDetailsScreen(
                                document: document,
                              ),
                            );
                          }),
                          SizedBox(height: 20),
                          ActionButtonsForRequestDetailsScreen(
                            name: name,
                            email: email,
                            ownerId: ownerId,
                            uid: uid,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label:',
            style: MyTextStyles.titleLargeSemiBoldBlack,
          ),
          Flexible(
            child: Text(
              value,
              style: MyTextStyles.titleLargeSemiBoldBlack,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
