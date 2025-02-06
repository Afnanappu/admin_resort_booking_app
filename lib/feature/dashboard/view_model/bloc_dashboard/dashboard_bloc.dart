import 'package:admin_resort_booking_app/feature/dashboard/models/dashboard_model.dart';
import 'package:admin_resort_booking_app/feature/dashboard/repository/dashboard_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardRepository _repository;
  DashboardBloc(this._repository) : super(_Loading()) {
    on<_FetchDashboardData>((event, emit) async {
      emit(DashboardState.loading());
      try {
        final dashboardData = await _repository.fetchDashboardData();
        emit(DashboardState.loaded(dashboardData));
      } catch (e) {
        emit(DashboardState.error(e.toString()));
      }
    });
  }
}
