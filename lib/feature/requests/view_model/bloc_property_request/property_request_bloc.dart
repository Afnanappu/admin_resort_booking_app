import 'package:admin_resort_booking_app/feature/requests/model/request_property_model.dart';
import 'package:admin_resort_booking_app/feature/requests/repository/property_request_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_request_event.dart';
part 'property_request_state.dart';
part 'property_request_bloc.freezed.dart';

class PropertyRequestBloc
    extends Bloc<PropertyRequestEvent, PropertyRequestState> {
  final PropertyRequestRepository _repository;
  PropertyRequestBloc(this._repository) : super(_Initial()) {
    //Fetch property data.
    on<_FetchProperty>((event, emit) async {
      emit(PropertyRequestState.loading());
      try {
        final propertyList = await _repository.fetchUnVerifiedPropertyData();
        emit(PropertyRequestState.success(propertyList));
      } catch (e) {
        emit(PropertyRequestState.error(e.toString()));
      }
    });

    on<_ApproveProperty>(
      (event, emit) async {
        try {
          await _repository.approvePropertyRequest(event.id);
          emit(PropertyRequestState.requestedAccepted());
        } catch (e) {
          emit(PropertyRequestState.error(e.toString()));
        }
      },
    );
    on<_RejectProperty>(
      (event, emit) async {
        try {
          await _repository.rejectPropertyRequest(event.id);
          emit(PropertyRequestState.requestedRejected());
        } catch (e) {
          emit(PropertyRequestState.error(e.toString()));
        }
      },
    );
  }
}
