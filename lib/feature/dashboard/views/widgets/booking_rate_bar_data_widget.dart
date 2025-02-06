import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/dashboard/models/booking_rate_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingRateBarDataWidget extends StatefulWidget {
  const BookingRateBarDataWidget({
    super.key,
    required this.barData,
  });

  final List<BookingRateModel> barData;

  @override
  State<BookingRateBarDataWidget> createState() =>
      _BookingRateBarDataWidgetState();
}

class _BookingRateBarDataWidgetState extends State<BookingRateBarDataWidget> {
  final currentDateTime = DateTime.now();
  String selectedFilter = 'Month'; // Default filter
  DateTimeRange? selectedDateRange;
  List<BookingRateModel> filteredData = [];

  final List<String> filterOptions = ['Day', 'Month', 'Year'];

  @override
  void initState() {
    super.initState();
    _filterData();
  }

  // Date Range Picker
  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      initialDateRange: DateTimeRange(
        start: getDateStartOrEnd(currentDateTime),
        end: currentDateTime,
      ),
    );
    if (picked != null && picked != selectedDateRange) {
      setState(() {
        selectedDateRange = picked;
        _filterData();
      });
    }
  }

  // Get start or end of the month
  DateTime getDateStartOrEnd(DateTime date, {bool isEnd = false}) {
    if (!isEnd) {
      return DateTime(date.year, date.month, 1);
    } else {
      final daysInMonth = DateUtils.getDaysInMonth(date.year, date.month);
      return DateTime(date.year, date.month, daysInMonth);
    }
  }

  // Filter data based on selected filter
  void _filterData() {
    DateTime start =
        selectedDateRange?.start ?? getDateStartOrEnd(currentDateTime);
    DateTime end = selectedDateRange?.end ??
        getDateStartOrEnd(currentDateTime, isEnd: true);

    setState(() {
      filteredData = widget.barData.where((entry) {
        return entry.date.isAfter(start.subtract(const Duration(days: 1))) &&
            entry.date.isBefore(end.add(const Duration(days: 1)));
      }).toList();

      if (selectedFilter == 'Week') {
        _groupByWeek();
      } else if (selectedFilter == 'Month') {
        _groupByMonth();
      } else if (selectedFilter == 'Year') {
        _groupByYear();
      }
      filteredData.sort(
        (a, b) => a.date.compareTo(b.date),
      );
    });
  }

  void _groupByWeek() {
    Map<int, int> weekCounts = {};
    for (var entry in filteredData) {
      int weekNumber = int.parse(DateFormat('w').format(entry.date));
      weekCounts[weekNumber] = (weekCounts[weekNumber] ?? 0) + entry.count;
    }
    filteredData = weekCounts.entries.map((e) {
      return BookingRateModel(
          date: DateTime(currentDateTime.year, 1, 1)
              .add(Duration(days: e.key * 7)),
          count: e.value);
    }).toList();
  }

  void _groupByMonth() {
    Map<int, int> monthCounts = {};
    for (var entry in filteredData) {
      monthCounts[entry.date.month] =
          (monthCounts[entry.date.month] ?? 0) + entry.count;
    }
    filteredData = monthCounts.entries.map((e) {
      return BookingRateModel(
          date: DateTime(currentDateTime.year, e.key, 1), count: e.value);
    }).toList();
  }

  void _groupByYear() {
    Map<int, int> yearCounts = {};
    for (var entry in filteredData) {
      yearCounts[entry.date.year] =
          (yearCounts[entry.date.year] ?? 0) + entry.count;
    }
    filteredData = yearCounts.entries.map((e) {
      return BookingRateModel(date: DateTime(e.key, 1, 1), count: e.value);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Date Range Picker + Filter Dropdown
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => _selectDateRange(context),
                  child: Text(
                    selectedDateRange == null
                        ? "${customDateFormat2(getDateStartOrEnd(currentDateTime))} - ${customDateFormat2(getDateStartOrEnd(currentDateTime, isEnd: true))}"
                        : "${customDateFormat2(selectedDateRange!.start)} - ${customDateFormat2(selectedDateRange!.end)}",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                DropdownButton<String>(
                  value: selectedFilter,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedFilter = newValue;
                        _filterData();
                      });
                    }
                  },
                  items: filterOptions
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Bar Chart
            Expanded(
              child: BarChart(
                BarChartData(
                  barGroups: _getBarGroups(),
                  borderData: FlBorderData(show: false),
                  maxY: filteredData.isNotEmpty
                      ? filteredData
                              .reduce((prev, curr) =>
                                  prev.count > curr.count ? prev : curr)
                              .count +
                          20
                      : 100,
                  gridData: FlGridData(show: true, drawVerticalLine: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              _getXAxisLabel(value.toInt()),
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
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
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

  // Get X-Axis Label Based on Selected Filter
  String _getXAxisLabel(int index) {
    if (index >= filteredData.length) return "";
    DateTime date = filteredData[index].date;

    switch (selectedFilter) {
      case 'Day':
        return DateFormat('dd MMM').format(date); // Example: "05 Jan"
      // case 'Week':
      //   return "W${DateFormat('W').format(date)}"; // Example: "W1"
      case 'Month':
        return DateFormat('MMM').format(date); // Example: "Jan"
      case 'Year':
        return DateFormat('yyyy').format(date); // Example: "2024"
      default:
        return "";
    }
  }

  List<BarChartGroupData> _getBarGroups() {
    final data = filteredData.asMap().entries.map((entry) {
      return BarChartGroupData(
        x: entry.key,
        barRods: [
          BarChartRodData(
            toY: entry.value.count.toDouble(),
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
      );
    }).toList();

    if (data.isEmpty) {
      return [BarChartGroupData(x: 0)];
    }
    return data;
  }
}
