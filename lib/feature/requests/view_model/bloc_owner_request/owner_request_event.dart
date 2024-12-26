part of 'owner_request_bloc.dart';

@freezed
class OwnerRequestEvent with _$OwnerRequestEvent {
  const factory OwnerRequestEvent.fetchOwners() = _FetchOwners;
  const factory OwnerRequestEvent.approveOwner(String uid) = _ApproveOwner;
}
