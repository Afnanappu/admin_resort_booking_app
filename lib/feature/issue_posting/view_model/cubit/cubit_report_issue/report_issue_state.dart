part of 'report_issue_cubit.dart';

@freezed
class ReportIssueState with _$ReportIssueState {
  const factory ReportIssueState.loading() = _Loading;
  const factory ReportIssueState.error(String error) = _Error;
  const factory ReportIssueState.loaded(List<ReportIssueModel> reports) =
      _Loaded;
}
