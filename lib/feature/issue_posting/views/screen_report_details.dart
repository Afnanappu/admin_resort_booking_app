import 'package:admin_resort_booking_app/core/components/custom_elevated_normal_button.dart';
import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/models/report_issue_model.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/view_model/cubit/cubit_report_issue/report_issue_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenReportDetails extends StatefulWidget {
  final ReportIssueModel report;
  // final Function(String id, String newStatus) onUpdateStatus;

  const ScreenReportDetails({
    super.key,
    required this.report,
  });

  @override
  State<ScreenReportDetails> createState() => _ReportDetailsScreenState();
}

class _ReportDetailsScreenState extends State<ScreenReportDetails> {
  late String selectedStatus;

  @override
  void initState() {
    super.initState();
    selectedStatus = widget.report.status;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.report.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Status:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedStatus,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              items: ['Pending', 'Resolved', 'In Progress']
                  .map((status) => DropdownMenuItem(
                        value: status,
                        child: Text(status),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedStatus = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Date: ${customDateFormat2(widget.report.timestamp)}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text(widget.report.description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            CustomElevatedNormalButton(
              onPressed: () {
                // widget.onUpdateStatus(widget.report.id, selectedStatus);
                context.read<ReportIssueCubit>().updateReportStatus(
                      widget.report.id!,
                      selectedStatus,
                    );
                Navigator.pop(context);
              },
              text: 'Update Status',
            ),
          ],
        ),
      ),
    );
  }
}
