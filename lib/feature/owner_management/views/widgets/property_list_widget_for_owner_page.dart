import 'package:admin_resort_booking_app/core/utils/math_functions.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/bloc/bloc_property_details/property_details_home_bloc.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/bloc/bloc_property_home_list/property_list_home_bloc.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/components/property_widget.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/screens/screen_home_property_details_.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/screens/screen_owner_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PropertyListWidgetForOwnerPage extends StatelessWidget {
  const PropertyListWidgetForOwnerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyListHomeBloc, PropertyListHomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const Center(
              child: Text('An unexpected error occurred'),
            );
          },
          error: (message) => Center(
            child: Text(message),
          ),
          loading: () => GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              return PropertyWidgetShimmer();
            },
          ),
          loaded: (properties) {
            return GridView.builder(
              itemCount: properties.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                final property = properties[index];
                final image = property.image.base64file;
                final propertyName = property.name;
                final location = property.location;
                final rating = getAverage(
                  property.reviews
                      .map(
                        (e) => e.rating,
                      )
                      .toList(),
                );
                final reviews = property.reviews
                    .map(
                      (e) => e.feedback,
                    )
                    .toList();

                final rooms = property.rooms;
                final price = property.price;

                return PropertyWidget(
                  onTap: () {
                    context.read<PropertyDetailsHomeBloc>().add(
                          PropertyDetailsHomeEvent.fetchPropertyDetails(
                              id: property.id!),
                        );
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenHomePropertyDetails(),
                    ));
                  },
                  image: image,
                  propertyName: propertyName,
                  location: location,
                  rating: rating,
                  reviews: reviews,
                  rooms: rooms,
                  price: price,
                );
              },
            );
          },
        );
      },
    );
  }
}
