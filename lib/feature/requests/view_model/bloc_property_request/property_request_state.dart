part of 'property_request_bloc.dart';

@freezed
class PropertyRequestState with _$PropertyRequestState {
  const factory PropertyRequestState.initial() = _Initial;
  const factory PropertyRequestState.loading() = _Loading;
  const factory PropertyRequestState.success(
      List<RequestPropertyModel> propertyList) = _Success;
  const factory PropertyRequestState.error(String error) = _Error;
  const factory PropertyRequestState.requestedAccepted() = _RequestedAccepted;
  const factory PropertyRequestState.requestedRejected() = _RequestedRejected;
}
