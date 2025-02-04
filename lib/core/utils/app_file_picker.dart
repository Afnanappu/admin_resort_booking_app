import 'dart:convert';
import 'dart:developer';

import 'package:admin_resort_booking_app/core/data/models/picked_file_model.dart';
import 'package:file_picker/file_picker.dart';

Future<PickedFileModel?> pickFileFromDevice({bool allowPdf = false}) async {
  final allowedExtensions = ['jpg', 'jpeg', 'png'];
  //allow pdf if true
  if (allowPdf) allowedExtensions.add('pdf');
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: allowedExtensions,
    withData: true,
    allowCompression: true,
  );

  log("${result?.names}");

  try {
    if (result != null) {
      final file = result.files.first;
      final fileName = file.name;
      final base64String = base64Encode(file.bytes!);

      //storing file
      return PickedFileModel(
        base64file: base64String,
        fileName: fileName,
        fileExtension: file.extension!,
      );
    } else {
      return null;
    }
  } catch (e, stack) {
    log(e.toString(), stackTrace: stack);
    return null;
  }
}

Future<List<PickedFileModel>> pickMultiFileFromDevice(
    {bool allowPdf = true}) async {
  final allowedExtensions = ['jpg', 'jpeg', 'png'];
  //allow pdf if true
  if (allowPdf) allowedExtensions.add('pdf');

  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: allowedExtensions,
    withData: true,
    allowMultiple: true,
    allowCompression: true,
  );

  log("${result?.names}");
  try {
    final selectedFiles = <PickedFileModel>[];
    if (result != null) {
      for (var file in result.files) {
        final fileName = file.name;
        final base64String = base64Encode(file.bytes!);
        selectedFiles.add(
          PickedFileModel(
            fileName: fileName,
            base64file: base64String,
            fileExtension: file.extension!,
          ),
        );
      }

      //storing file
      return selectedFiles;
    } else {
      throw 'Picking file failed';
    }
  } catch (e, stack) {
    log(e.toString(), stackTrace: stack);
    return [];
  }
}
