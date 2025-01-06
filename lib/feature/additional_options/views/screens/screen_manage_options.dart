import 'package:admin_resort_booking_app/core/components/custom_snack_bar.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/feature/additional_options/view_model/bloc/bloc/additional_option_bloc.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/components/elevated_button_for_add_option.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/components/list_tile_for_add_option.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/components/show_dialog_for_adding_additional_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenManageOptions extends StatelessWidget {
  const ScreenManageOptions({
    super.key,
    required this.title,
    required this.index,
  });
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    final additionalOptionBloc = context.read<AdditionalOptionBloc>();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        additionalOptionBloc.add(
          AdditionalOptionEvent.fetchDataForIndex(index),
        );
      },
    );
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Manage $title',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: MyColors.orange,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButtonForAddOptions(
            title: title,
            onPressed: () {
              showDialogForAddingAdditionalOptions(
                context: context,
                title: title,
                index: index,
              );
            },
          ),
          SizedBox(height: 30),
          // Simple List of Items
          Expanded(
            child: BlocConsumer<AdditionalOptionBloc, AdditionalOptionState>(
              listener: (context, state) {
                state.maybeWhen(
                  optionAdded: () {
                    showCustomSnackBar(
                      context: context,
                      message: 'Added a new $title',
                      bgColor: MyColors.success,
                    );
                    additionalOptionBloc.add(
                      AdditionalOptionEvent.fetchDataForIndex(index),
                    );
                  },
                  optionEdited: () {
                    showCustomSnackBar(
                      context: context,
                      message: '$title Edited successfully',
                      bgColor: MyColors.success,
                    );
                    additionalOptionBloc.add(
                      AdditionalOptionEvent.fetchDataForIndex(index),
                    );
                  },
                  optionDeleted: () {
                    showCustomSnackBar(
                      context: context,
                      message: '$title deleted',
                      bgColor: MyColors.grey,
                    );
                    additionalOptionBloc.add(
                      AdditionalOptionEvent.fetchDataForIndex(index),
                    );
                  },
                  error: (error) {
                    showCustomSnackBar(
                      context: context,
                      message: error,
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return Center(
                      child: Text('Loading...'),
                    );
                  },
                  loaded: (items) {
                    return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, idx) {
                        return ListItemForAddOptions(
                          item: items[idx],

                          //this is the index of the additional options now <3.
                          index: index,
                        );
                      },
                    );
                  },
                  error: (error) {
                    return Center(
                      child: Text(error),
                    );
                  },
                  orElse: () {
                    return Center(
                      child: Text('No data'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
