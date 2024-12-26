import 'dart:convert';
import 'package:admin_resort_booking_app/core/utils/download_base64_string_file.dart';
import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({
    super.key,
    required this.image,
    required this.fileName,
    required this.fileExtension,
  });
  final String image;
  final String fileName;
  final String fileExtension;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.memory(base64Decode(image)),
          ),
          Positioned(
              right: 0,
              child: IconButton(
                  iconSize: 28,
                  onPressed: () {
                    downloadBase64StringFile(
                      fileName: fileName,
                      base64String: image,
                      type: 'image/$fileExtension',
                    );
                  },
                  icon: Icon(Icons.download)))
        ],
      ),
    );
  }
}
