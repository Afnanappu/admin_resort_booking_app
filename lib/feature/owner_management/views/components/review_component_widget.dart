import 'package:admin_resort_booking_app/core/components/custom_container_for_property_details.dart';
import 'package:admin_resort_booking_app/core/constants/my_colors.dart';
import 'package:admin_resort_booking_app/core/data/models/review_model.dart';
import 'package:admin_resort_booking_app/core/utils/custom_date_formats.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/cubit/cubit_review/review_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating/flutter_rating.dart';

class ReviewComponentWidget extends StatelessWidget {
  const ReviewComponentWidget({
    super.key,
    required this.ownerId,
  });
  final String ownerId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReviewCubit>().fetchReviews(ownerId);
    });
    return CustomContainerForPropertyDetails(
      title: 'Review',
      child: BlocBuilder<ReviewCubit, ReviewState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (reviews) {
              return reviews.isEmpty
                  ? const Center(
                      child: Text('No reviews yet'),
                    )
                  : Column(
                      children: reviews
                          .map(
                            (review) => ReviewWidget(review: review),
                          )
                          .toList(),
                    );
            },
          );
        },
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.review,
  });

  final ReviewModel review;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Rating:',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 8),
            StarRating(
              rating: review.rating.toDouble(),
              size: 20,
              allowHalfRating: false,
              color: MyColors.orange,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          review.feedback,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            customDateFormatWithTime(review.timestamp), // Display the timestamp
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}
