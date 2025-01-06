import 'package:admin_resort_booking_app/feature/requests/model/request_owner_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OwnerRequestDataCubit extends Cubit<RequestOwnerModel?> {
  OwnerRequestDataCubit() : super(null);

  void setOwnerData(RequestOwnerModel ownerData) {
    emit(ownerData);
  }

  void clear() {
    emit(null);
  }
}
