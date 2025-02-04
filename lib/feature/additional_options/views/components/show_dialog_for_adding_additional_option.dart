import 'dart:convert';
import 'dart:developer';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/constants/spaces.dart';
import 'package:admin_resort_booking_app/core/data/models/picked_file_model.dart';
import 'package:admin_resort_booking_app/core/utils/app_file_picker.dart';
import 'package:admin_resort_booking_app/core/utils/screen_size.dart';
import 'package:admin_resort_booking_app/feature/additional_options/models/additional_option_tile_model.dart';
import 'package:admin_resort_booking_app/feature/additional_options/view_model/bloc/bloc/additional_option_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showDialogForAddingAdditionalOptions({
  required BuildContext context,
  required String title,
  required int index,
  bool isEdit = false,
  AdditionalOptionTileModel? item,
}) {
  PickedFileModel? pickedImage;
  final nameController = TextEditingController();
  if (item != null) {
    pickedImage = item.image;
    nameController.text = item.name;
  }
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(isEdit ? title : 'Add New $title'),
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            StatefulBuilder(
              builder: (context, setState) => InkWell(
                onTap: () async {
                  pickedImage = await pickFileFromDevice();
                  setState(
                    () {},
                  );
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: MyColors.orangeBackground,
                  backgroundImage: pickedImage != null
                      ? MemoryImage(base64Decode(pickedImage!.base64file))
                      : null,
                ),
              ),
            ),
            MySpaces.wSpace10,
            SizedBox(
              width: MyScreenSize.width * .25,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              //model creation
              final model = AdditionalOptionTileModel(
                id: item?.id,
                name: nameController.text.trim(),
                image: pickedImage,
              );

              //check if edit or not(add)
              if (isEdit) {
                //
                if (item == null) return;

                //
                context
                    .read<AdditionalOptionBloc>()
                    .add(AdditionalOptionEvent.editOptionData(
                      index: index,
                      docId: item.id!,
                      model: model,
                    ));

                log('editing worked in the show dialog');
              } else {
                context.read<AdditionalOptionBloc>().add(
                      AdditionalOptionEvent.addDataWithIndexBased(
                        index: index,
                        model: model,
                      ),
                    );
              }
              Navigator.of(context).pop();
            },
            child: Text(isEdit ? 'Edit' : 'Add'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}
