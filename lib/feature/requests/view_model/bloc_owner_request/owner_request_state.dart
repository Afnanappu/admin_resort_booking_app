part of 'owner_request_bloc.dart';

@freezed
class OwnerRequestState with _$OwnerRequestState {
  const factory OwnerRequestState.initial() = _Initial;
  const factory OwnerRequestState.loading() = _Loading;
  const factory OwnerRequestState.success(List<OwnerModel> ownersList) =
      _Success;
  const factory OwnerRequestState.error(String error) = _Error;
  const factory OwnerRequestState.requestedAccepted() = _RequestedAccepted;
  const factory OwnerRequestState.requestedRejected() = _RequestedRejected;
}
