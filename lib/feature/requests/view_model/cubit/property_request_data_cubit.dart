import 'package:admin_resort_booking_app/feature/requests/model/request_property_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PropertyRequestDataCubit extends Cubit<RequestPropertyModel?> {
  PropertyRequestDataCubit() : super(null);

  void setOwnerData(RequestPropertyModel propertyData) {
    emit(propertyData);
  }

  void clear() {
    emit(null);
  }
}
