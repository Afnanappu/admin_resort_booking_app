import 'dart:convert';

import 'package:admin_resort_booking_app/feature/requests/model/document_model.dart';
import 'package:flutter/material.dart';

class PropertyRequestDetailsImage extends StatelessWidget {
  const PropertyRequestDetailsImage({
    super.key,
    required this.images,
    required this.propertyName,
  });

  final List<DocumentModel> images;
  final String propertyName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.memory(
            base64Decode(
              images.first.base64file,
            ),
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.7)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Text(
            propertyName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
