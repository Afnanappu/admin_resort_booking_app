// import 'package:flutter/material.dart';

import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/dashboard/models/report_overview_model.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ReportOverviewWidget extends StatelessWidget {
  const ReportOverviewWidget({
    super.key,
    required this.reportModel,
  });
  final ReportOverviewModel reportModel;

  @override
  Widget build(BuildContext context) {
    final data = [
      {
        'title': 'Total Properties',
        'value': '${reportModel.totalProperties}',
        'change': '20%',
        'positive': true
      },
      {
        'title': 'Total Revenue',
        'value': customCurrencyFormat(reportModel.totalRevenue),
        'change': '16%',
        'positive': true
      },
      {
        'title': 'Total Owners',
        'value': '${reportModel.totalOwners}',
        'change': '12%',
        'positive': true
      },
      {
        'title': 'Total Users',
        'value': '${reportModel.totalUsers}',
        'change': '12%',
        'positive': true
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 2,
        ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          // final positive = item['positive'] as bool;
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  item['title'] as String,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  item['value'] as String,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                // SizedBox(height: 8),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Icon(
                //       positive ? Icons.arrow_upward : Icons.arrow_downward,
                //       color: positive ? Colors.green : Colors.red,
                //       size: 16,
                //     ),
                //     SizedBox(width: 4),
                //     Text(
                //       item['change'] as String,
                //       style: TextStyle(
                //         color: positive ? Colors.green : Colors.red,
                //         fontSize: 12,
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';

class ReportOverviewShimmer extends StatelessWidget {
  const ReportOverviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 2,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 14,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 60,
                    height: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
