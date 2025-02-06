

import 'package:admin_resort_booking_app/core/components/carousel_image_picked_show_widget.dart';
import 'package:admin_resort_booking_app/core/components/custom_app_bar.dart';
import 'package:admin_resort_booking_app/core/components/custom_container_for_property_details.dart';
import 'package:admin_resort_booking_app/core/components/custom_divider.dart';
import 'package:admin_resort_booking_app/core/constants/spaces.dart';
import 'package:admin_resort_booking_app/core/constants/text_styles.dart';
import 'package:admin_resort_booking_app/core/data/models/property_details_model.dart';
import 'package:admin_resort_booking_app/core/data/models/rules_details_model.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/bloc/bloc_property_details/property_details_home_bloc.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/components/custom_list_points_widget_for_property_details.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/widgets/about_the_resort_widget_for_property_details.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/widgets/main_details_widget_for_property_details.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/widgets/review_and_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ScreenHomePropertyDetails extends StatelessWidget {
  const ScreenHomePropertyDetails({super.key});
  // CameraPosition? initialCameraPosition;
  // late LatLng propertyLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Details Resort',
        needUnderline: false,
      ),
      body: BlocBuilder<PropertyDetailsHomeBloc, PropertyDetailsHomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return Center(
                child: Text(
                  'Loading property details, please wait!',
                ),
              );
            },
            error: (message) {
              return Center(
                child: Text(
                  message,
                ),
              );
            },
            loaded: (propertyModel) {
              final rules = propertyModel.extraDetails.rulesDetailsModel;
              final basicDetails = propertyModel.extraDetails.basicDetailsModel;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ListView(
                  children: [
                    CarouselImagePickedShowWidget(
                      horizontal: 0,
                      pickedImages: propertyModel.images,
                    ),
                    MySpaces.hSpace20,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //main details
                          MainDetailsWidgetForPropertyDetails(
                            propertyModel: propertyModel,
                          ),

                          CustomDivider(
                            horizontal: 35,
                          ),

                          //About the Resort
                          AboutTheResortWidgetForPropertyDetails(
                            basicDetails: basicDetails,
                            propertyModel: propertyModel,
                          ),

                          //Resort rules
                          _resortRulesBuilder(propertyModel, rules),

                          //Location
                          // _locationBuilder(),

                          //Review and rating
                          ReviewAndRatingWidget(
                            reviews: propertyModel.reviews,
                          ),
                          MySpaces.hSpace60,
                          //
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            orElse: () {
              return Center(
                child: Text(
                  'Something unexpected happened, can\'t load property details',
                ),
              );
            },
          );
        },
      ),
      // floatingActionButton: CustomElevatedButton(
      //   width: MyScreenSize.width * .65,
      //   text: 'Select Rooms',
      //   onPressed: () {
      //     selectDateAndGustBottomSheet(context);
      //   },
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  CustomContainerForPropertyDetails _resortRulesBuilder(
    PropertyDetailsModel propertyModel,
    RulesDetailsModel rules,
  ) {
    return CustomContainerForPropertyDetails(
      title: 'Resort Rules',
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Check-In: ${propertyModel.checkInTime} | Check-Out: ${propertyModel.checkOutTime}',
                style: MyTextStyles.bodySmallMediumBlack
                    .copyWith(letterSpacing: 0),
              ),
            ],
          ),
          CustomDivider(
            vertical: 10,
            horizontal: 34,
          ),
          CustomListPointsWidgetForPropertyDetails(
            title: rules.title,
            details: rules.rules,
          ),
        ],
      ),
    );
  }

  // CustomContainerForPropertyDetails _locationBuilder() {
  //   return CustomContainerForPropertyDetails(
  //     title: 'Location',
  //     child: SizedBox(
  //       height: 250,
  //       width: .5,
  //       child: BlocBuilder<GoogleMapBloc, GoogleMapState>(
  //         builder: (context, state) {
  //           final cameraPosition = state.maybeWhen(
  //             mapLoaded: (cameraPosition, selectedMarker) {
  //               return cameraPosition;
  //             },
  //             orElse: () {
  //               return null;
  //             },
  //           );

  //           if (cameraPosition != null) {
  //             initialCameraPosition = cameraPosition;
  //           }

  //           return initialCameraPosition == null
  //               ? Center(
  //                   child: Text(state.maybeWhen(
  //                     error: (error) => error,
  //                     initial: () => 'Loading',
  //                     orElse: () {
  //                       return 'An unexpected error occurred';
  //                     },
  //                   )),
  //                 )
  //               : CustomGoogleMapWidget(
  //                   initialCameraPosition: initialCameraPosition,
  //                   onMapCreated: (controller) {
  //                     context
  //                         .read<GoogleMapBloc>()
  //                         .getMapController
  //                         .complete(controller);
  //                   },
  //                   markers: state.maybeWhen(
  //                     locationConfirmed: (selectedLocation, _) => {
  //                       Marker(
  //                         markerId: MarkerId('selectedPlace'),
  //                         icon: BitmapDescriptor.defaultMarker,
  //                         position: LatLng(
  //                           selectedLocation.latitude,
  //                           selectedLocation.longitude,
  //                         ),
  //                       )
  //                     },
  //                     orElse: () => {},
  //                   ),
  //                   polylines: state.maybeWhen(
  //                     locationConfirmed: (_, polylines) => polylines ?? {},
  //                     orElse: () => {},
  //                   ),
  //                 );
  //         },
  //       ),
  //     ),
  //   );
  // }
}
