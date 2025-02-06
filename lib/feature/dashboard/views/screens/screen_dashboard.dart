import 'package:admin_resort_booking_app/feature/dashboard/view_model/bloc_dashboard/dashboard_bloc.dart';
import 'package:admin_resort_booking_app/feature/dashboard/views/widgets/booking_rate_bar_data_widget.dart';
import 'package:admin_resort_booking_app/feature/dashboard/views/widgets/report_overview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<DashboardBloc>().add(DashboardEvent.fetchDashboardData());
      },
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReportOverviewShimmer(),
                    // Chart Section
                    BookingRateBarDataWidget(barData: []),

                    SizedBox(height: 24),

                    // Lost Bookings Section

                    // LostBookingsWidget(),
                  ],
                ),
                error: (error) => Center(
                  child: Text(error),
                ),
                orElse: () => Center(
                  child: Text('An unexpected error occurred'),
                ),
                loaded: (dashboardModel) {
                  final reportModel = dashboardModel.reportOverview;
                  // final cancelledProperties =
                  //     dashboardModel.cancelledProperties;
                  final bookingRates = dashboardModel.bookingRates;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReportOverviewWidget(
                        reportModel: reportModel,
                      ),
                      // Chart Section
                      BookingRateBarDataWidget(barData: bookingRates),

                      SizedBox(height: 24),

                      // Lost Bookings Section

                      // LostBookingsWidget(),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
