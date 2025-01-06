part of 'additional_option_bloc.dart';

@freezed
class AdditionalOptionEvent with _$AdditionalOptionEvent {
  const factory AdditionalOptionEvent.fetchDataForIndex(int index) =
      _FetchDataForIndex;
  const factory AdditionalOptionEvent.addDataWithIndexBased({
    required int index,
    required AdditionalOptionTileModel model,
  }) = _AddDataWithIndexBased;
  const factory AdditionalOptionEvent.deleteOptionData(
      {required int index, required String? id}) = _DeleteOptionData;
  const factory AdditionalOptionEvent.editOptionData({
    required int index,
    required String docId,
    required AdditionalOptionTileModel model,
  }) = _EditOptionData;
}
