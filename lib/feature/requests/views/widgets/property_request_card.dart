import 'dart:convert';

import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/feature/requests/model/request_property_model.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/cubit/property_request_data_cubit.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PropertyRequestCard extends StatelessWidget {
  final RequestPropertyModel property;

  const PropertyRequestCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.symmetric(
      //   horizontal: MyScreenSize.width * .1,
      //   vertical: 8,
      // ),
      elevation: 3,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child:
              // Image.network(
              //   property.images.first.base64file,

              Image.memory(
            base64Decode(
              property.images.first.base64file,
            ),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.image_not_supported, size: 50),
          ),
        ),
        title: Text(
          property.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Type: ${property.type}"),
            Text("Location: ${property.location}"),
            Text(
                "Check-in: ${property.checkInTime}, Check-out: ${property.checkOutTime}"),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            context.read<PropertyRequestDataCubit>().setOwnerData(property);
            context.push(
                "/${AppRoutes.request}/${AppRoutes.requestPropertyDetails}");
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => ScreenPropertyRequestDetails(
            //         // checkInTime: property.checkInTime,
            //         // checkOutTime: property.checkOutTime,
            //         // description: property.description,
            //         // imageUrl: property.images.first,
            //         // location: property.location,
            //         // name: property.name,
            //         // type: property.type,
            //         ),
            //   ),
            // );
          },
          child: Text(
            "Details",
            style: MyTextStyles.bodyLargeNormalWhite,
          ),
        ),
      ),
    );
  }
}
