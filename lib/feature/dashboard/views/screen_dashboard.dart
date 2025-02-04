// import 'package:flutter/material.dart';

// class DashboardPage extends StatelessWidget {
//   const DashboardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Dashboard Content',
//             style: Theme.of(context).textTheme.headlineMedium));
//   }
// }
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReportOverviewScreen(),
              // Chart Section
              RoomNightProductionChart(),

              SizedBox(height: 24),

              // Lost Bookings Section

              LostBookingsWidget(),

              // Card(
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12)),
              //   elevation: 5,
              //   child: Padding(
              //     padding: const EdgeInsets.all(16.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text('Lost Bookings',
              //             style: TextStyle(
              //                 fontSize: 18, fontWeight: FontWeight.bold)),
              //         SizedBox(height: 16),
              //         for (int i = 0; i < 5; i++)
              //           ListTile(
              //             contentPadding: EdgeInsets.zero,
              //             leading: CircleAvatar(
              //               backgroundImage: NetworkImage(
              //                   'https://via.placeholder.com/100'), // Replace with image URL
              //             ),
              //             title: Text('Hotel ${i + 1} Name'),
              //             subtitle: Text('Address of the hotel ${i + 1}'),
              //             trailing: Text('\$${(100 + i * 50)}/night'),
              //           ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final String percentageChange;
  final bool isNegative;

  const DashboardCard({
    super.key,
    required this.title,
    required this.value,
    required this.percentageChange,
    this.isNegative = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 8),
            Text(
              percentageChange,
              style: TextStyle(
                fontSize: 16,
                color: isNegative ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReportOverviewScreen extends StatelessWidget {
  const ReportOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {
        'title': 'Total Properties',
        'value': '26',
        'change': '20%',
        'positive': true
      },
      {
        'title': 'Total Revenue',
        'value': '₹260,501',
        'change': '16%',
        'positive': true
      },
      {
        'title': 'Total Owners',
        'value': '8',
        'change': '12%',
        'positive': true
      },
      {
        'title': 'Total Users',
        'value': '18',
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
          final positive = item['positive'] as bool;
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
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      positive ? Icons.arrow_upward : Icons.arrow_downward,
                      color: positive ? Colors.green : Colors.red,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      item['change'] as String,
                      style: TextStyle(
                        color: positive ? Colors.green : Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class RoomNightProductionChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final barData = [
      80.0,
      150.0,
      120.0,
      130.0,
      140.0,
      150.0,
      180.0,
      200.0,
      220.0,
      240.0,
      230.0,
      260.0
    ]; // Example values for each month

    return SizedBox(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "01/01/2023 - 12/31/2023",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Expanded(
              child: BarChart(
                BarChartData(
                  barGroups: barData
                      .asMap()
                      .entries
                      .map(
                        (entry) => BarChartGroupData(
                          x: entry.key,
                          barRods: [
                            BarChartRodData(
                              toY: entry.value,
                              width: 25,
                              gradient: LinearGradient(
                                colors: [
                                  MyColors.orange.withAlpha(210),
                                  MyColors.orange.withAlpha(150)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  borderData: FlBorderData(show: false),
                  maxY: barData.reduce(
                        (previousValue, element) =>
                            previousValue > element ? previousValue : element,
                      ) +
                      50,
                  gridData: FlGridData(show: true, drawVerticalLine: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          const months = [
                            'JAN',
                            'FEB',
                            'MAR',
                            'APR',
                            'MAY',
                            'JUN',
                            'JUL',
                            'AUG',
                            'SEP',
                            'OCT',
                            'NOV',
                            'DEC'
                          ];
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              months[value.toInt()],
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return Text(
                            value.toInt().toString(),
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          );
                        },
                        reservedSize: 30,
                      ),
                    ),
                  ),
                  barTouchData: BarTouchData(enabled: true),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LostBookingsWidget extends StatelessWidget {
  final List<Map<String, String>> bookings = [
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hyatt Place Phoenix / Downtown',
      'address': '150 W Adams St, Phoenix, AZ 85003',
      'price': '\$106/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hilton Garden Inn Phoenix North Happy Valley',
      'address': '1940 W Pinnacle Peak Rd, Phoenix, AZ 85027',
      'price': '\$200/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hyatt Place Tempe / Phoenix Airport',
      'address': '1413 W Rio Salado Pkwy, Tempe, AZ 85281',
      'price': '\$100/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Courtyard by Marriott Phoenix Downtown',
      'address': '132 S Central Ave, Phoenix, AZ 85004',
      'price': 'Flexible schedule',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Homewood Suites by Hilton Phoenix - Chandler',
      'address': '1221 South Spectrum Boulevard, Chandler, AZ 85286',
      'price': '\$120/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hilton Garden Inn Phoenix Downtown',
      'address': '15 E Monroe St, Phoenix, AZ 85004',
      'price': '\$130/night',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lost Bookings',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'From 01/01/2023 - 12/31/2023, you\'ve lost the most bookings to these properties.',
            style: TextStyle(color: Colors.grey[600]),
          ),
          SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              final booking = bookings[index];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        booking['image']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            booking['name']!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            booking['address']!,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      booking['price']!,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
