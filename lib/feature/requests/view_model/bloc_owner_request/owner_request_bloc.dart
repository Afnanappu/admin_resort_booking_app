import 'package:admin_resort_booking_app/feature/requests/model/request_owner_model.dart';
import 'package:admin_resort_booking_app/feature/requests/repository/owner_request_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_request_event.dart';
part 'owner_request_state.dart';
part 'owner_request_bloc.freezed.dart';

class OwnerRequestBloc extends Bloc<OwnerRequestEvent, OwnerRequestState> {
  final OwnerRequestRepository _repository;
  OwnerRequestBloc(this._repository) : super(_Initial()) {
    on<_FetchOwners>((event, emit) async {
      emit(OwnerRequestState.loading());
      try {
        final owners = await _repository.fetchUnVerifiedOwnerDataFromFirebase();

        emit(OwnerRequestState.success(owners));
      } catch (e) {
        emit(OwnerRequestState.error(e.toString()));
      }
    });

    on<_ApproveOwner>(
      (event, emit) async {
        emit(OwnerRequestState.loading());

        try {
          await _repository.approveOwnerRequest(event.uid);
          emit(OwnerRequestState.requestedAccepted());
        } catch (e) {
          emit(OwnerRequestState.error(e.toString()));
        }
      },
    );

    on<_RejectOwner>(
      (event, emit) async {
        emit(OwnerRequestState.loading());

        try {
          await _repository.rejectOwnerRequest(event.uid);
          emit(OwnerRequestState.requestedRejected());
        } catch (e) {
          emit(OwnerRequestState.error(e.toString()));
        }
      },
    );
  }
}
