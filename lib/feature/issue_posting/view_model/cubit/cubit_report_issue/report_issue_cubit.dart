import 'dart:developer';

import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/models/report_issue_model.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/services.dart/report_issue_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_issue_state.dart';
part 'report_issue_cubit.freezed.dart';

class ReportIssueCubit extends Cubit<ReportIssueState> {
  final ReportIssueServices _services;
  ReportIssueCubit(this._services) : super(ReportIssueState.loading());

  //Function to request submission
  Future<void> getReports() async {
    emit(ReportIssueState.loading());
    try {
      final model = await _services.getReports();

      emit(ReportIssueState.loaded(model));
    } catch (e) {
      emit(ReportIssueState.error(e.toString()));
    }
  }

  Future<void> updateReportStatus(String id, String status) async {
    emit(ReportIssueState.loading());
    try {
      await _services.updateReportStatus(id, status);
      getReports();
    } catch (e) {
      emit(ReportIssueState.error(e.toString()));
    }
  }
}
