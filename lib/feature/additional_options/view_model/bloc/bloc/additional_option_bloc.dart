import 'dart:developer';

import 'package:admin_resort_booking_app/feature/additional_options/repository/additional_option_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:admin_resort_booking_app/feature/additional_options/models/additional_option_tile_model.dart';

part 'additional_option_bloc.freezed.dart';
part 'additional_option_event.dart';
part 'additional_option_state.dart';

class AdditionalOptionBloc
    extends Bloc<AdditionalOptionEvent, AdditionalOptionState> {
  final AdditionalOptionRepository _additionalOptionRepository;

  AdditionalOptionBloc(this._additionalOptionRepository) : super(_Initial()) {
    on<_FetchDataForIndex>((event, emit) async {
      emit(AdditionalOptionState.loading());

      final type = getAdditionalTypeWithIndex(event.index);
      try {
        if (type != null) {
          final data = await _additionalOptionRepository
              .fetchAllDataOfOneOption(type: type);
          if (data.isEmpty) {
            emit(AdditionalOptionState.initial());
          } else {
            emit(AdditionalOptionState.loaded(data));
          }
        }
      } catch (e) {
        emit(AdditionalOptionState.error(e.toString()));
      }

      return;
    });

    on<_AddDataWithIndexBased>(
      (event, emit) async {
        final type = getAdditionalTypeWithIndex(event.index);
        if (type != null) {
          try {
            await _additionalOptionRepository.addAdditionOptions(
              type: type,
              model: event.model,
            );
            emit(AdditionalOptionState.optionAdded());
          } catch (e) {
            emit(AdditionalOptionState.error(e.toString()));
          }
        } else {
          log('can\'t find type, index out of case : index = ${event.index}');
          emit(
            AdditionalOptionState.error(
                'can\'t find type, index out of case : index = ${event.index}'),
          );
        }
      },
    );

    on<_DeleteOptionData>(
      (event, emit) async {
        if (event.id == null) {
          return emit(AdditionalOptionState.error(
              'Can\'t delete option, because id is null'));
        }
        final type = getAdditionalTypeWithIndex(event.index);
        if (type != null) {
          try {
            await _additionalOptionRepository.deleteOptionData(
              type: type,
              docId: event.id!,
            );
            emit(AdditionalOptionState.optionDeleted());
          } catch (e) {
            emit(AdditionalOptionState.error(e.toString()));
          }
        } else {
          emit(
            AdditionalOptionState.error(
                'can\'t find type, index out of case : index = ${event.index}'),
          );
        }
      },
    );

    on<_EditOptionData>(
      (event, emit) async {
        emit(AdditionalOptionState.loading());
        try {
          final type = getAdditionalTypeWithIndex(event.index);
          if (type == null) {
            log('type is null');
            return;
          }
          await _additionalOptionRepository.editOptionData(
            type: type,
            docId: event.docId,
            model: event.model,
          );
          log('edit worked');
          emit(AdditionalOptionState.optionEdited());
        } catch (e) {
          emit(AdditionalOptionState.error(e.toString()));
        }
      },
    );
  }

  String? getAdditionalTypeWithIndex(int index) {
    String? type;
    switch (index) {
      case 0:
        type = 'Property_Categories';
        break;
      case 1:
        type = 'Amenities';
      case 2:
        type = 'Room_Type';
      case 3:
        type = 'Bed_Type';
      default:
    }
    if (type == null) {
      log('can\'t find type, index out of case : index = $index');
    }
    return type;
  }
}
