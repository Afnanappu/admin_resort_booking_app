part of 'owner_request_bloc.dart';

@freezed
class OwnerRequestEvent with _$OwnerRequestEvent {
  const factory OwnerRequestEvent.fetchOwners() = _FetchOwners;
  const factory OwnerRequestEvent.approveOwner({
    required String uid,
    required String ownerId,
    required String email,
    required String ownerName,
  }) = _ApproveOwner;
  const factory OwnerRequestEvent.rejectOwner({
    required String uid,
    required String ownerId,
    required String email,
    required String ownerName,
  }) = _RejectOwner;
}
