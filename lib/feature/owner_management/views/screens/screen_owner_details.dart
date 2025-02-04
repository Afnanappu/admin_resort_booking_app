import 'package:admin_resort_booking_app/core/components/custom_divider.dart';
import 'package:admin_resort_booking_app/core/components/icon_text_widget.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/data/models/owner_model.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/bloc/bloc_property_home_list/property_list_home_bloc.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/widgets/profile_tile_for_owner_details.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/widgets/property_list_widget_for_owner_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ScreenOwnerDetails extends StatelessWidget {
  final OwnerModel owner;

  const ScreenOwnerDetails({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context.read<PropertyListHomeBloc>().add(
              PropertyListHomeEvent.fetchProperties(ownerId: owner.uid!),
            );
      },
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          shrinkWrap: true,
          children: [
            ProfileTileForOwnerDetails(owner: owner, context: context),

            CustomDivider(
              vertical: 20,
              horizontal: 20,
            ),

            //Details
            _detailsBuilder(),

            CustomDivider(
              vertical: 20,
              horizontal: 20,
            ),

            // ReviewComponentWidget(
            //   ownerId: owner.uid!,
            // ),

            PropertyListWidgetForOwnerPage()
          ],
        ),
      ),
    );
  }

  Column _detailsBuilder() {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(
              icon: Icon(Icons.person_outline_outlined),
              text: _textBuilder('User Id'),
            ),
            Text(
              ' ${owner.uid}',
              style: TextStyle(
                fontSize: 16,
                color: MyColors.grey,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(
              icon: Icon(Icons.phone_outlined),
              text: _textBuilder('Phone no'),
            ),
            Text(
              owner.phone != null ? owner.phone! : 'N/A',
              style: TextStyle(
                fontSize: 16,
                color: MyColors.grey,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(
              icon: Icon(Icons.email_outlined),
              text: _textBuilder('Email'),
            ),
            Text(
              ' ${owner.email}',
              style: TextStyle(
                fontSize: 16,
                color: MyColors.grey,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(
              icon: Icon(Icons.access_time_sharp),
              text: _textBuilder('User since'),
            ),
            Text(
              owner.createdAt != null
                  ? DateFormat.yMMMd().format(owner.createdAt!)
                  : 'N/A',
              style: TextStyle(
                fontSize: 16,
                color: MyColors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Text _textBuilder(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      );
}
