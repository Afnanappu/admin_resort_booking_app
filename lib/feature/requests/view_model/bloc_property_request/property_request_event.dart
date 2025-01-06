part of 'property_request_bloc.dart';

@freezed
class PropertyRequestEvent with _$PropertyRequestEvent {
  const factory PropertyRequestEvent.fetchProperty() = _FetchProperty;
  const factory PropertyRequestEvent.approveProperty(String id) =
      _ApproveProperty;
  const factory PropertyRequestEvent.rejectProperty(String id) =
      _RejectProperty;
}
