// import 'dart:developer';
// import 'package:admin_resort_booking_app/core/utils/download_base64_string_file.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// class SyncfusionPDFViewer extends StatelessWidget {
//   const SyncfusionPDFViewer({
//     super.key,
//     required this.base64,
//     required this.fileName,
//   });

//   final String base64;
//   final String fileName;

//   @override
//   Widget build(BuildContext context) {
//     final pdfUrl = downloadBase64StringFile(
//         fileName: fileName, base64String: base64, type: 'application/pdf');

//     log(pdfUrl);
//     return Scaffold(
//       body: SfPdfViewer.network(
//         pdfUrl,
//       ),
//     );
//   }
// }
