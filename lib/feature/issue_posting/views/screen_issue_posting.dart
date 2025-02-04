// import 'package:flutter/material.dart';

// class IssuePostingPage extends StatelessWidget {
//   const IssuePostingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Issue Posting Content',
//         style: Theme.of(context).textTheme.headlineMedium,
//       ),
//     );
//   }
// }
import 'package:admin_resort_booking_app/core/components/custom_app_container.dart';
import 'package:admin_resort_booking_app/core/components/custom_elevated_normal_button.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:flutter/material.dart';

class IssuePostingPage extends StatefulWidget {
  const IssuePostingPage({super.key});

  @override
  State<IssuePostingPage> createState() => _UserReportsScreenState();
}

class _UserReportsScreenState extends State<IssuePostingPage> {
  List<Map<String, dynamic>> reports = [
    {
      'id': 1,
      'title': 'Bug in checkout',
      'status': 'Pending',
      'date': '2024-02-04'
    },
    {
      'id': 2,
      'title': 'App crashes',
      'status': 'Resolved',
      'date': '2024-02-03'
    },
    {
      'id': 3,
      'title': 'UI Issue',
      'status': 'In Progress',
      'date': '2024-02-02'
    },
  ];

  String filterStatus = 'All';

  void updateReportStatus(int id, String newStatus) {
    setState(() {
      for (var report in reports) {
        if (report['id'] == id) {
          report['status'] = newStatus;
          break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredReports = filterStatus == 'All'
        ? reports
        : reports.where((r) => r['status'] == filterStatus).toList();

    return Scaffold(
      body: Column(
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
            child: ListView.builder(
              itemCount: filteredReports.length,
              itemBuilder: (context, index) {
                final report = filteredReports[index];
                return CustomAppContainer(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(report['title'],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Status: ${report['status']}',
                            style: TextStyle(color: Colors.black87)),
                        Text('Date: ${report['date']}',
                            style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: MyColors.grey,
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReportDetailsScreen(
                          report: report,
                          onUpdateStatus: updateReportStatus,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ReportDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> report;
  final Function(int, String) onUpdateStatus;

  const ReportDetailsScreen(
      {super.key, required this.report, required this.onUpdateStatus});

  @override
  State<ReportDetailsScreen> createState() => _ReportDetailsScreenState();
}

class _ReportDetailsScreenState extends State<ReportDetailsScreen> {
  late String selectedStatus;

  @override
  void initState() {
    super.initState();
    selectedStatus = widget.report['status'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.report['title']),
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
            Text('Date: ${widget.report['date']}',
                style: TextStyle(fontSize: 16, color: Colors.black54)),
            SizedBox(height: 20),
            Text('Details about the report will be shown here...',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            CustomElevatedNormalButton(
              onPressed: () {
                widget.onUpdateStatus(widget.report['id'], selectedStatus);
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
