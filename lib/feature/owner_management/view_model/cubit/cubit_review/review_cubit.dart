import 'package:admin_resort_booking_app/core/data/models/review_model.dart';
import 'package:admin_resort_booking_app/core/data/repository/review_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_state.dart';
part 'review_cubit.freezed.dart';

class ReviewCubit extends Cubit<ReviewState> {
  final ReviewRepository _repository;
  ReviewCubit(this._repository) : super(ReviewState.loading());

  //Fetch all reviews for a owner
  Future<void> fetchReviews(String ownerId) async {
    emit(ReviewState.loading());
    try {
      final reviews = await _repository.fetchOwnerReviews(ownerId);
      emit(ReviewState.loaded(reviews: reviews));
    } catch (e) {
      emit(ReviewState.error(error: e.toString()));
    }
  }
}
