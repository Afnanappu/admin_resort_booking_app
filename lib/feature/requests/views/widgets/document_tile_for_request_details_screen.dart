import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/download_base64_string_file.dart';
import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DocumentTileForRequestDetailsScreen extends StatelessWidget {
  const DocumentTileForRequestDetailsScreen({
    super.key,
    required this.document,
  });
  final DocumentModel document;
  @override
  Widget build(BuildContext context) {
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
