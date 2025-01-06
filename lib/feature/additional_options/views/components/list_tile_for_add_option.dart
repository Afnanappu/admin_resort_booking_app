import 'dart:convert';
import 'dart:developer';

import 'package:admin_resort_booking_app/core/components/custom_alert_dialog.dart';
import 'package:admin_resort_booking_app/feature/additional_options/models/additional_option_tile_model.dart';
import 'package:admin_resort_booking_app/feature/additional_options/view_model/bloc/bloc/additional_option_bloc.dart';
import 'package:admin_resort_booking_app/feature/additional_options/views/components/show_dialog_for_adding_additional_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListItemForAddOptions extends StatelessWidget {
  const ListItemForAddOptions({
    super.key,
    required this.item,
    required this.index,
  });
  final AdditionalOptionTileModel item;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        leading: item.image != null
            ? Image.memory(
                base64Decode(item.image!.base64file),
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              )
            : null,
        title: Text(
          item.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Wrap(
          spacing: 10,
          children: [
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
                showDialogForAddingAdditionalOptions(
                  context: context,
                  title: 'Edit ${item.name}',
                  index: index,
                  isEdit: true,
                  item: item,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                // Optionally show a confirmation dialog before deleting
                customAlertDialog(
                  context: context,
                  title: 'Delete Option',
                  content: 'Do you want to delete this option',
                  firstText: 'Yes',
                  secondText: 'No',
                  firstOnPressed: () {
                    if (item.id != null) {
                      context.read<AdditionalOptionBloc>().add(
                            AdditionalOptionEvent.deleteOptionData(
                              index: index,
                              id: item.id,
                            ),
                          );
                      log('delete button worked');
                    } else {
                      log('id is null so  can\'t delete option');
                    }
                    context.pop();
                  },
                  secondOnPressed: () {
                    context.pop();
                  },
                );
              },
            ),
          ],
        ),
        onTap: () {
          // Handle item tap if needed
        },
      ),
    );
  }
}
