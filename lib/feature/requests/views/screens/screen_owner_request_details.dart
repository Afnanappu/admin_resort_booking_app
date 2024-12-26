import 'dart:convert';
import 'dart:developer';

import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/my_constants.dart';
import 'package:admin_resort_booking_app/core/constants/spaces.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/core/utils/download_base64_string_file.dart';
import 'package:admin_resort_booking_app/core/utils/send_email.dart';
import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/views/screens/pdf_viewer.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            initial: () {
              showCustomSnackBar(
                context: context,
                message: 'Owner approved',
                bgColor: MyColors.success,
              );
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
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: profilePicture != null
                            ? MemoryImage(base64Decode(profilePicture!))
                            : const AssetImage('assets/icons/boss.png'),
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
                                return _buildDocumentTile(
                                    personalProof[index], context);
                              },
                            ),
                            MySpaces.hSpace20,
                            _buildActionButtons(context),
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

  Widget _buildProfileSection() {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: profilePicture != null
              ? NetworkImage(profilePicture!)
              : const AssetImage('assets/default_avatar.png') as ImageProvider,
        ),
        const SizedBox(height: 12),
        Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          email,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        Chip(
          label: Text(
            isVerified ? 'Verified' : 'Not Verified',
            style: TextStyle(
              color: isVerified ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: isVerified ? Colors.green[50] : Colors.red[50],
        ),
      ],
    );
  }

  Widget _buildDetailsSection() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoRow('Owner ID', ownerId),
            _buildInfoRow('User UID', uid),
          ],
        ),
      ),
    );
  }

  // Widget _buildDocumentsSection() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       const Text(
  //         'Personal Proof',
  //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  //       ),
  //       const SizedBox(height: 8),
  //       _buildDocumentTile(personalProof),
  //       const SizedBox(height: 16),
  //       const Text(
  //         'Licenses',
  //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  //       ),
  //       const SizedBox(height: 8),
  //       ...license.map((doc) => _buildDocumentTile(doc)),
  //     ],
  //   );
  // }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: () async {
            // Approve logic
            context
                .read<OwnerRequestBloc>()
                .add(OwnerRequestEvent.approveOwner(uid));

            await sendEmail(name, email, ownerId);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.orange,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
            // Reject logic
            showCustomSnackBar(context: context, message: 'Owner rejected');
          },
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentTile(DocumentModel document, BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: const Icon(Icons.insert_drive_file, color: Colors.teal),
        title: Text(document.fileName),
        trailing: IconButton(
          icon: const Icon(Icons.open_in_new, color: Colors.teal),
          onPressed: () {
            // Open the document URL
            log('Opening ${document.fileName}');
            if (document.fileExtension == 'pdf') {
              log('downloading pdf: ${document.fileName}');

              //to download the pdf
              downloadBase64StringFile(
                fileName: document.fileName,
                base64String: document.file,
                type: 'application/pdf',
              );
              // context.go('/${AppRoutes.pdfViewer}', extra: <String, dynamic>{
              //   'file': document.file,
              //   'fileName': document.fileName,
              // });
            } else {
              context.go('/${AppRoutes.imageViewer}', extra: <String, dynamic>{
                'file': document.file,
                'fileName': document.fileName,
                'fileExtension': document.fileExtension,
              });
              log('Opening image: ${document.fileName}');
            }
          },
        ),
      ),
    );
  }
}
