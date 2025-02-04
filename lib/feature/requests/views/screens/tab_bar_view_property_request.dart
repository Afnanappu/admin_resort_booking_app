import 'package:admin_resort_booking_app/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenPropertyRequest extends StatelessWidget {
  const ScreenPropertyRequest({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (timeStamp) {
    //     context.read<PropertyRequestBloc>().add(
    //           PropertyRequestEvent.fetchProperty(),
    //         );
    //   },
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("Property Requests"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MyScreenSize.width * .1, vertical: 10),
        child: Center(
          child: Text(
            'This feature is on development',
          ),
        ),
        // child: BlocBuilder<PropertyRequestBloc, PropertyRequestState>(
        //   builder: (context, state) {
        //     return state.maybeWhen(
        //       success: (propertyList) {
        //         return propertyList.isNotEmpty
        //             ? ListView.builder(
        //                 itemCount: propertyList.length,
        //                 itemBuilder: (context, index) {
        //                   final property = propertyList[index];
        //                   return PropertyRequestCard(property: property);
        //                 },
        //               )
        //             : Center(
        //                 child: Column(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     Icon(Icons.inbox, size: 48, color: Colors.grey),
        //                     const SizedBox(height: 10),
        //                     Text(
        //                       'No Requests',
        //                       style: MyTextStyles.titleMediumSemiBoldBlack,
        //                     ),
        //                     const SizedBox(height: 5),
        //                     Text(
        //                       'There are no owner requests at the moment.',
        //                       style: MyTextStyles.bodySmallRegularGrey,
        //                       textAlign: TextAlign.center,
        //                     ),
        //                   ],
        //                 ),
        //               );
        //       },
        //       error: (error) => Center(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(Icons.error_outline, color: Colors.red, size: 48),
        //             const SizedBox(height: 10),
        //             Text(
        //               error,
        //               style: MyTextStyles.titleMediumSemiBoldBlack,
        //             ),
        //           ],
        //         ),
        //       ),
        //       loading: () => const Center(
        //         child: Text('Loading...'),
        //       ),
        //       orElse: () => const Center(
        //         child: Text('Something went wrong.'),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
