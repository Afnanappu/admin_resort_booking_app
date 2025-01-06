import 'dart:convert';
import 'dart:developer';

import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/core/utils/screen_size.dart';
import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';
import 'package:admin_resort_booking_app/feature/requests/model/request_property_model.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_property_request/property_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/cubit/property_request_data_cubit.dart';
import 'package:admin_resort_booking_app/feature/requests/views/widgets/property_request_details_image.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class ScreenPropertyRequestDetails extends StatelessWidget {
  RequestPropertyModel? propertyModel;
  ScreenPropertyRequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    propertyModel = context.read<PropertyRequestDataCubit>().state;
    if (propertyModel == null) {
      return Center(
        child: Text('Property not found'),
      );
    }

    final String id = propertyModel!.id!;
    final String propertyName = propertyModel!.name;
    final List<DocumentModel> images = propertyModel!.images;
    final String type = propertyModel!.type;
    final String location = propertyModel!.location;
    final String checkInTime = propertyModel!.checkInTime;
    final String checkOutTime = propertyModel!.checkOutTime;
    final String description = propertyModel!.description;
    final List<DocumentModel> licenseImage = propertyModel!.licenseFiles;

    return Scaffold(
      body: BlocListener<PropertyRequestBloc, PropertyRequestState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (error) {
              showCustomSnackBar(context: context, message: error);
            },
            requestedAccepted: () {
              log('Resort accepted successfully');
              showCustomSnackBar(
                context: context,
                message: 'Resort accepted successfully',
                bgColor: MyColors.success,
              );
            },
            requestedRejected: () {
              showCustomSnackBar(
                context: context,
                message: 'Resort rejected successfully',
                bgColor: MyColors.grey,
              );
            },
            orElse: () {},
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MyScreenSize.width * .1,
            vertical: 15,
          ),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            shrinkWrap: true,
            children: [
              PropertyRequestDetailsImage(
                  images: images, propertyName: propertyName),
              SizedBox(height: 16),

              // Property Details Card
              _buildCard(
                title: "Property Details",
                children: [
                  _buildDetailRow("Type", type),
                  _buildDetailRow("Location", location),
                  _buildDetailRow("Check-In Time", checkInTime),
                  _buildDetailRow("Check-Out Time", checkOutTime),
                ],
              ),
              SizedBox(height: 16),

              // Description Card
              _buildCard(
                title: "Description",
                children: [
                  Text(
                    description,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // License Information Card
              _buildCard(
                title: "License Information",
                children: [
                  Row(
                    spacing: 5,
                    children: licenseImage.map(
                      (license) {
                        return GestureDetector(
                          onTap: () {
                            context.push('/${AppRoutes.imageViewer}',
                                extra: <String, dynamic>{
                                  'file': license.base64file,
                                  'fileName': license.fileName,
                                  'fileExtension': license.fileExtension,
                                });
                            log('Opening image: ${license.fileName}');
                          },
                          child: Image.memory(
                            base64Decode(
                              license.base64file,
                            ),
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ).toList(),
                  )
                ],
              ),
              // SizedBox(height: 16),

              // // Additional Information Card
              // _buildCard(
              //   title: "Additional Information",
              //   children: [
              //     Text(
              //       additionalInfo,
              //       style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              //     ),
              //   ],
              // ),
              SizedBox(height: 32),

              // Action Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () async {
                      context.read<PropertyRequestBloc>().add(
                            PropertyRequestEvent.approveProperty(id),
                          );

                      context.pop();
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
                      context.read<PropertyRequestBloc>().add(
                            PropertyRequestEvent.rejectProperty(id),
                          );
                      context.pop();
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String title, required List<Widget> children}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: MyColors.black,
              ),
            ),
            Divider(color: MyColors.greyLight),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade800,
            ),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
        ],
      ),
    );
  }
}
