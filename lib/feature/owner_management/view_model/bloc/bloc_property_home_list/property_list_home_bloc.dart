import 'package:admin_resort_booking_app/core/data/models/property_card_model.dart';
import 'package:admin_resort_booking_app/feature/owner_management/repository/property_home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_list_home_event.dart';
part 'property_list_home_state.dart';
part 'property_list_home_bloc.freezed.dart';

class PropertyListHomeBloc
    extends Bloc<PropertyListHomeEvent, PropertyListHomeState> {
  final PropertyHomeRepository _repository;
  PropertyListHomeBloc(this._repository) : super(_Loading()) {
    on<_FetchProperties>((event, emit) async {
      emit(PropertyListHomeState.loading());

      try {
        final propertyList =
            await _repository.fetchOwnerProperties(ownerId: event.ownerId);
        emit(PropertyListHomeState.loaded(propertyList));
      } catch (e) {
        emit(PropertyListHomeState.error(e.toString()));
      }
    });
  }
}
