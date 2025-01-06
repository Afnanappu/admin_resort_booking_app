part of 'additional_option_bloc.dart';

@freezed
class AdditionalOptionState with _$AdditionalOptionState {
  const factory AdditionalOptionState.initial() = _Initial;
  const factory AdditionalOptionState.loading() = _Loading;
  const factory AdditionalOptionState.loaded(
      List<AdditionalOptionTileModel> listOfItems) = _Loaded;
  const factory AdditionalOptionState.error(String error) = _Error;
  const factory AdditionalOptionState.optionAdded() = _OptionAdded;
  const factory AdditionalOptionState.optionDeleted() = _OptionDeleted;
  const factory AdditionalOptionState.optionEdited() = _OptionEdited;
}
