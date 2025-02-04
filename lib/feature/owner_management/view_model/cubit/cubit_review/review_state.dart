part of 'review_cubit.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.loading() = _Loading;
  const factory ReviewState.loaded({
    required List<ReviewModel> reviews,
  }) = _Loaded;
  const factory ReviewState.error({
    required String error,
  }) = _Error;
}
