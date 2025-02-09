import 'package:admin_resort_booking_app/core/components/custom_app_container.dart';
import 'package:admin_resort_booking_app/core/components/custom_circular_progress_indicator.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/view_model/cubit/cubit_report_issue/report_issue_cubit.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/views/screen_report_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IssuePostingPage extends StatefulWidget {
  const IssuePostingPage({super.key});
  @override
  State<IssuePostingPage> createState() => _UserReportsScreenState();
}

class _UserReportsScreenState extends State<IssuePostingPage> {
  // List<Map<String, dynamic>> reports = [
  //   {
  //     'id': 1,
  //     'title': 'Bug in checkout',
  //     'status': 'Pending',
  //     'date': '2024-02-04'
  //   },
  //   {
  //     'id': 2,
  //     'title': 'App crashes',
  //     'status': 'Resolved',
  //     'date': '2024-02-03'
  //   },
  //   {
  //     'id': 3,
  //     'title': 'UI Issue',
  //     'status': 'In Progress',
  //     'date': '2024-02-02'
  //   },
  // ];

  String filterStatus = 'All';

  // void updateReportStatus(
  //     String id, String newStatus, List<ReportIssueModel> reports) {
  //   setState(() {
  //     for (var report in reports) {
  //       if (report.id == id) {
  //         report. = newStatus;
  //         break;
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<ReportIssueCubit>().getReports();
      },
    );
    return Scaffold(
      body: BlocBuilder<ReportIssueCubit, ReportIssueState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Center(
              child: CustomCircularProgressIndicator(),
            ),
            error: (error) => Center(
              child: Text(error),
            ),
            orElse: () => Center(
              child: Text('An unexpected error occurred'),
            ),
            loaded: (reports) {
              var filteredReports = filterStatus == 'All'
                  ? reports
                  : reports.where((r) => r.status == filterStatus).toList();
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<String>(
                      value: filterStatus,
                      decoration: InputDecoration(
                        labelText: 'Filter by Status',
                        border: OutlineInputBorder(),
                      ),
                      items: ['All', 'Pending', 'Resolved', 'In Progress']
                          .map((status) => DropdownMenuItem(
                                value: status,
                                child: Text(status),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          filterStatus = value!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: filteredReports.isEmpty
                        ? Center(
                            child: Text('No issue reported'),
                          )
                        : ListView.builder(
                            itemCount: filteredReports.length,
                            itemBuilder: (context, index) {
                              final report = filteredReports[index];
                              return CustomAppContainer(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(10),
                                // ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(10),
                                  title: Text(report.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Status: ${report.status}',
                                          style:
                                              TextStyle(color: Colors.black87)),
                                      Text(
                                          'Date: ${customDateFormat2(report.timestamp)}',
                                          style:
                                              TextStyle(color: Colors.black54)),
                                    ],
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: MyColors.grey,
                                  ),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ScreenReportDetails(
                                        report: report,
                                        // onUpdateStatus: (id, newStatus) {
                                        //   updateReportStatus(id, newStatus, reports);
                                        // },
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
