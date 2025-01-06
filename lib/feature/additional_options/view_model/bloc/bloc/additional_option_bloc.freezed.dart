// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_option_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdditionalOptionEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchDataForIndex,
    required TResult Function(int index, AdditionalOptionTileModel model)
        addDataWithIndexBased,
    required TResult Function(int index, String? id) deleteOptionData,
    required TResult Function(
            int index, String docId, AdditionalOptionTileModel model)
        editOptionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchDataForIndex,
    TResult? Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult? Function(int index, String? id)? deleteOptionData,
    TResult? Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchDataForIndex,
    TResult Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult Function(int index, String? id)? deleteOptionData,
    TResult Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataForIndex value) fetchDataForIndex,
    required TResult Function(_AddDataWithIndexBased value)
        addDataWithIndexBased,
    required TResult Function(_DeleteOptionData value) deleteOptionData,
    required TResult Function(_EditOptionData value) editOptionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult? Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult? Function(_DeleteOptionData value)? deleteOptionData,
    TResult? Function(_EditOptionData value)? editOptionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult Function(_DeleteOptionData value)? deleteOptionData,
    TResult Function(_EditOptionData value)? editOptionData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionalOptionEventCopyWith<AdditionalOptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalOptionEventCopyWith<$Res> {
  factory $AdditionalOptionEventCopyWith(AdditionalOptionEvent value,
          $Res Function(AdditionalOptionEvent) then) =
      _$AdditionalOptionEventCopyWithImpl<$Res, AdditionalOptionEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$AdditionalOptionEventCopyWithImpl<$Res,
        $Val extends AdditionalOptionEvent>
    implements $AdditionalOptionEventCopyWith<$Res> {
  _$AdditionalOptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchDataForIndexImplCopyWith<$Res>
    implements $AdditionalOptionEventCopyWith<$Res> {
  factory _$$FetchDataForIndexImplCopyWith(_$FetchDataForIndexImpl value,
          $Res Function(_$FetchDataForIndexImpl) then) =
      __$$FetchDataForIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FetchDataForIndexImplCopyWithImpl<$Res>
    extends _$AdditionalOptionEventCopyWithImpl<$Res, _$FetchDataForIndexImpl>
    implements _$$FetchDataForIndexImplCopyWith<$Res> {
  __$$FetchDataForIndexImplCopyWithImpl(_$FetchDataForIndexImpl _value,
      $Res Function(_$FetchDataForIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$FetchDataForIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchDataForIndexImpl implements _FetchDataForIndex {
  const _$FetchDataForIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AdditionalOptionEvent.fetchDataForIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataForIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataForIndexImplCopyWith<_$FetchDataForIndexImpl> get copyWith =>
      __$$FetchDataForIndexImplCopyWithImpl<_$FetchDataForIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchDataForIndex,
    required TResult Function(int index, AdditionalOptionTileModel model)
        addDataWithIndexBased,
    required TResult Function(int index, String? id) deleteOptionData,
    required TResult Function(
            int index, String docId, AdditionalOptionTileModel model)
        editOptionData,
  }) {
    return fetchDataForIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchDataForIndex,
    TResult? Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult? Function(int index, String? id)? deleteOptionData,
    TResult? Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
  }) {
    return fetchDataForIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchDataForIndex,
    TResult Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult Function(int index, String? id)? deleteOptionData,
    TResult Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
    required TResult orElse(),
  }) {
    if (fetchDataForIndex != null) {
      return fetchDataForIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataForIndex value) fetchDataForIndex,
    required TResult Function(_AddDataWithIndexBased value)
        addDataWithIndexBased,
    required TResult Function(_DeleteOptionData value) deleteOptionData,
    required TResult Function(_EditOptionData value) editOptionData,
  }) {
    return fetchDataForIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult? Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult? Function(_DeleteOptionData value)? deleteOptionData,
    TResult? Function(_EditOptionData value)? editOptionData,
  }) {
    return fetchDataForIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult Function(_DeleteOptionData value)? deleteOptionData,
    TResult Function(_EditOptionData value)? editOptionData,
    required TResult orElse(),
  }) {
    if (fetchDataForIndex != null) {
      return fetchDataForIndex(this);
    }
    return orElse();
  }
}

abstract class _FetchDataForIndex implements AdditionalOptionEvent {
  const factory _FetchDataForIndex(final int index) = _$FetchDataForIndexImpl;

  @override
  int get index;

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDataForIndexImplCopyWith<_$FetchDataForIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDataWithIndexBasedImplCopyWith<$Res>
    implements $AdditionalOptionEventCopyWith<$Res> {
  factory _$$AddDataWithIndexBasedImplCopyWith(
          _$AddDataWithIndexBasedImpl value,
          $Res Function(_$AddDataWithIndexBasedImpl) then) =
      __$$AddDataWithIndexBasedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, AdditionalOptionTileModel model});
}

/// @nodoc
class __$$AddDataWithIndexBasedImplCopyWithImpl<$Res>
    extends _$AdditionalOptionEventCopyWithImpl<$Res,
        _$AddDataWithIndexBasedImpl>
    implements _$$AddDataWithIndexBasedImplCopyWith<$Res> {
  __$$AddDataWithIndexBasedImplCopyWithImpl(_$AddDataWithIndexBasedImpl _value,
      $Res Function(_$AddDataWithIndexBasedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? model = null,
  }) {
    return _then(_$AddDataWithIndexBasedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AdditionalOptionTileModel,
    ));
  }
}

/// @nodoc

class _$AddDataWithIndexBasedImpl implements _AddDataWithIndexBased {
  const _$AddDataWithIndexBasedImpl({required this.index, required this.model});

  @override
  final int index;
  @override
  final AdditionalOptionTileModel model;

  @override
  String toString() {
    return 'AdditionalOptionEvent.addDataWithIndexBased(index: $index, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDataWithIndexBasedImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, model);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDataWithIndexBasedImplCopyWith<_$AddDataWithIndexBasedImpl>
      get copyWith => __$$AddDataWithIndexBasedImplCopyWithImpl<
          _$AddDataWithIndexBasedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchDataForIndex,
    required TResult Function(int index, AdditionalOptionTileModel model)
        addDataWithIndexBased,
    required TResult Function(int index, String? id) deleteOptionData,
    required TResult Function(
            int index, String docId, AdditionalOptionTileModel model)
        editOptionData,
  }) {
    return addDataWithIndexBased(index, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchDataForIndex,
    TResult? Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult? Function(int index, String? id)? deleteOptionData,
    TResult? Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
  }) {
    return addDataWithIndexBased?.call(index, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchDataForIndex,
    TResult Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult Function(int index, String? id)? deleteOptionData,
    TResult Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
    required TResult orElse(),
  }) {
    if (addDataWithIndexBased != null) {
      return addDataWithIndexBased(index, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataForIndex value) fetchDataForIndex,
    required TResult Function(_AddDataWithIndexBased value)
        addDataWithIndexBased,
    required TResult Function(_DeleteOptionData value) deleteOptionData,
    required TResult Function(_EditOptionData value) editOptionData,
  }) {
    return addDataWithIndexBased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult? Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult? Function(_DeleteOptionData value)? deleteOptionData,
    TResult? Function(_EditOptionData value)? editOptionData,
  }) {
    return addDataWithIndexBased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult Function(_DeleteOptionData value)? deleteOptionData,
    TResult Function(_EditOptionData value)? editOptionData,
    required TResult orElse(),
  }) {
    if (addDataWithIndexBased != null) {
      return addDataWithIndexBased(this);
    }
    return orElse();
  }
}

abstract class _AddDataWithIndexBased implements AdditionalOptionEvent {
  const factory _AddDataWithIndexBased(
          {required final int index,
          required final AdditionalOptionTileModel model}) =
      _$AddDataWithIndexBasedImpl;

  @override
  int get index;
  AdditionalOptionTileModel get model;

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDataWithIndexBasedImplCopyWith<_$AddDataWithIndexBasedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteOptionDataImplCopyWith<$Res>
    implements $AdditionalOptionEventCopyWith<$Res> {
  factory _$$DeleteOptionDataImplCopyWith(_$DeleteOptionDataImpl value,
          $Res Function(_$DeleteOptionDataImpl) then) =
      __$$DeleteOptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String? id});
}

/// @nodoc
class __$$DeleteOptionDataImplCopyWithImpl<$Res>
    extends _$AdditionalOptionEventCopyWithImpl<$Res, _$DeleteOptionDataImpl>
    implements _$$DeleteOptionDataImplCopyWith<$Res> {
  __$$DeleteOptionDataImplCopyWithImpl(_$DeleteOptionDataImpl _value,
      $Res Function(_$DeleteOptionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? id = freezed,
  }) {
    return _then(_$DeleteOptionDataImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteOptionDataImpl implements _DeleteOptionData {
  const _$DeleteOptionDataImpl({required this.index, required this.id});

  @override
  final int index;
  @override
  final String? id;

  @override
  String toString() {
    return 'AdditionalOptionEvent.deleteOptionData(index: $index, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOptionDataImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, id);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOptionDataImplCopyWith<_$DeleteOptionDataImpl> get copyWith =>
      __$$DeleteOptionDataImplCopyWithImpl<_$DeleteOptionDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchDataForIndex,
    required TResult Function(int index, AdditionalOptionTileModel model)
        addDataWithIndexBased,
    required TResult Function(int index, String? id) deleteOptionData,
    required TResult Function(
            int index, String docId, AdditionalOptionTileModel model)
        editOptionData,
  }) {
    return deleteOptionData(index, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchDataForIndex,
    TResult? Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult? Function(int index, String? id)? deleteOptionData,
    TResult? Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
  }) {
    return deleteOptionData?.call(index, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchDataForIndex,
    TResult Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult Function(int index, String? id)? deleteOptionData,
    TResult Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
    required TResult orElse(),
  }) {
    if (deleteOptionData != null) {
      return deleteOptionData(index, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataForIndex value) fetchDataForIndex,
    required TResult Function(_AddDataWithIndexBased value)
        addDataWithIndexBased,
    required TResult Function(_DeleteOptionData value) deleteOptionData,
    required TResult Function(_EditOptionData value) editOptionData,
  }) {
    return deleteOptionData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult? Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult? Function(_DeleteOptionData value)? deleteOptionData,
    TResult? Function(_EditOptionData value)? editOptionData,
  }) {
    return deleteOptionData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult Function(_DeleteOptionData value)? deleteOptionData,
    TResult Function(_EditOptionData value)? editOptionData,
    required TResult orElse(),
  }) {
    if (deleteOptionData != null) {
      return deleteOptionData(this);
    }
    return orElse();
  }
}

abstract class _DeleteOptionData implements AdditionalOptionEvent {
  const factory _DeleteOptionData(
      {required final int index,
      required final String? id}) = _$DeleteOptionDataImpl;

  @override
  int get index;
  String? get id;

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteOptionDataImplCopyWith<_$DeleteOptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditOptionDataImplCopyWith<$Res>
    implements $AdditionalOptionEventCopyWith<$Res> {
  factory _$$EditOptionDataImplCopyWith(_$EditOptionDataImpl value,
          $Res Function(_$EditOptionDataImpl) then) =
      __$$EditOptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String docId, AdditionalOptionTileModel model});
}

/// @nodoc
class __$$EditOptionDataImplCopyWithImpl<$Res>
    extends _$AdditionalOptionEventCopyWithImpl<$Res, _$EditOptionDataImpl>
    implements _$$EditOptionDataImplCopyWith<$Res> {
  __$$EditOptionDataImplCopyWithImpl(
      _$EditOptionDataImpl _value, $Res Function(_$EditOptionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? docId = null,
    Object? model = null,
  }) {
    return _then(_$EditOptionDataImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AdditionalOptionTileModel,
    ));
  }
}

/// @nodoc

class _$EditOptionDataImpl implements _EditOptionData {
  const _$EditOptionDataImpl(
      {required this.index, required this.docId, required this.model});

  @override
  final int index;
  @override
  final String docId;
  @override
  final AdditionalOptionTileModel model;

  @override
  String toString() {
    return 'AdditionalOptionEvent.editOptionData(index: $index, docId: $docId, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditOptionDataImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, docId, model);

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditOptionDataImplCopyWith<_$EditOptionDataImpl> get copyWith =>
      __$$EditOptionDataImplCopyWithImpl<_$EditOptionDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchDataForIndex,
    required TResult Function(int index, AdditionalOptionTileModel model)
        addDataWithIndexBased,
    required TResult Function(int index, String? id) deleteOptionData,
    required TResult Function(
            int index, String docId, AdditionalOptionTileModel model)
        editOptionData,
  }) {
    return editOptionData(index, docId, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchDataForIndex,
    TResult? Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult? Function(int index, String? id)? deleteOptionData,
    TResult? Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
  }) {
    return editOptionData?.call(index, docId, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchDataForIndex,
    TResult Function(int index, AdditionalOptionTileModel model)?
        addDataWithIndexBased,
    TResult Function(int index, String? id)? deleteOptionData,
    TResult Function(int index, String docId, AdditionalOptionTileModel model)?
        editOptionData,
    required TResult orElse(),
  }) {
    if (editOptionData != null) {
      return editOptionData(index, docId, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataForIndex value) fetchDataForIndex,
    required TResult Function(_AddDataWithIndexBased value)
        addDataWithIndexBased,
    required TResult Function(_DeleteOptionData value) deleteOptionData,
    required TResult Function(_EditOptionData value) editOptionData,
  }) {
    return editOptionData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult? Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult? Function(_DeleteOptionData value)? deleteOptionData,
    TResult? Function(_EditOptionData value)? editOptionData,
  }) {
    return editOptionData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataForIndex value)? fetchDataForIndex,
    TResult Function(_AddDataWithIndexBased value)? addDataWithIndexBased,
    TResult Function(_DeleteOptionData value)? deleteOptionData,
    TResult Function(_EditOptionData value)? editOptionData,
    required TResult orElse(),
  }) {
    if (editOptionData != null) {
      return editOptionData(this);
    }
    return orElse();
  }
}

abstract class _EditOptionData implements AdditionalOptionEvent {
  const factory _EditOptionData(
      {required final int index,
      required final String docId,
      required final AdditionalOptionTileModel model}) = _$EditOptionDataImpl;

  @override
  int get index;
  String get docId;
  AdditionalOptionTileModel get model;

  /// Create a copy of AdditionalOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditOptionDataImplCopyWith<_$EditOptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdditionalOptionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalOptionStateCopyWith<$Res> {
  factory $AdditionalOptionStateCopyWith(AdditionalOptionState value,
          $Res Function(AdditionalOptionState) then) =
      _$AdditionalOptionStateCopyWithImpl<$Res, AdditionalOptionState>;
}

/// @nodoc
class _$AdditionalOptionStateCopyWithImpl<$Res,
        $Val extends AdditionalOptionState>
    implements $AdditionalOptionStateCopyWith<$Res> {
  _$AdditionalOptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AdditionalOptionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AdditionalOptionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdditionalOptionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AdditionalOptionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AdditionalOptionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AdditionalOptionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AdditionalOptionTileModel> listOfItems});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AdditionalOptionStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfItems = null,
  }) {
    return _then(_$LoadedImpl(
      null == listOfItems
          ? _value._listOfItems
          : listOfItems // ignore: cast_nullable_to_non_nullable
              as List<AdditionalOptionTileModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<AdditionalOptionTileModel> listOfItems)
      : _listOfItems = listOfItems;

  final List<AdditionalOptionTileModel> _listOfItems;
  @override
  List<AdditionalOptionTileModel> get listOfItems {
    if (_listOfItems is EqualUnmodifiableListView) return _listOfItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfItems);
  }

  @override
  String toString() {
    return 'AdditionalOptionState.loaded(listOfItems: $listOfItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfItems, _listOfItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listOfItems));

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) {
    return loaded(listOfItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) {
    return loaded?.call(listOfItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listOfItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AdditionalOptionState {
  const factory _Loaded(final List<AdditionalOptionTileModel> listOfItems) =
      _$LoadedImpl;

  List<AdditionalOptionTileModel> get listOfItems;

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AdditionalOptionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AdditionalOptionState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AdditionalOptionState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OptionAddedImplCopyWith<$Res> {
  factory _$$OptionAddedImplCopyWith(
          _$OptionAddedImpl value, $Res Function(_$OptionAddedImpl) then) =
      __$$OptionAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OptionAddedImplCopyWithImpl<$Res>
    extends _$AdditionalOptionStateCopyWithImpl<$Res, _$OptionAddedImpl>
    implements _$$OptionAddedImplCopyWith<$Res> {
  __$$OptionAddedImplCopyWithImpl(
      _$OptionAddedImpl _value, $Res Function(_$OptionAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OptionAddedImpl implements _OptionAdded {
  const _$OptionAddedImpl();

  @override
  String toString() {
    return 'AdditionalOptionState.optionAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OptionAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) {
    return optionAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) {
    return optionAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) {
    if (optionAdded != null) {
      return optionAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) {
    return optionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) {
    return optionAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) {
    if (optionAdded != null) {
      return optionAdded(this);
    }
    return orElse();
  }
}

abstract class _OptionAdded implements AdditionalOptionState {
  const factory _OptionAdded() = _$OptionAddedImpl;
}

/// @nodoc
abstract class _$$OptionDeletedImplCopyWith<$Res> {
  factory _$$OptionDeletedImplCopyWith(
          _$OptionDeletedImpl value, $Res Function(_$OptionDeletedImpl) then) =
      __$$OptionDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OptionDeletedImplCopyWithImpl<$Res>
    extends _$AdditionalOptionStateCopyWithImpl<$Res, _$OptionDeletedImpl>
    implements _$$OptionDeletedImplCopyWith<$Res> {
  __$$OptionDeletedImplCopyWithImpl(
      _$OptionDeletedImpl _value, $Res Function(_$OptionDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OptionDeletedImpl implements _OptionDeleted {
  const _$OptionDeletedImpl();

  @override
  String toString() {
    return 'AdditionalOptionState.optionDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OptionDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) {
    return optionDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) {
    return optionDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) {
    if (optionDeleted != null) {
      return optionDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) {
    return optionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) {
    return optionDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) {
    if (optionDeleted != null) {
      return optionDeleted(this);
    }
    return orElse();
  }
}

abstract class _OptionDeleted implements AdditionalOptionState {
  const factory _OptionDeleted() = _$OptionDeletedImpl;
}

/// @nodoc
abstract class _$$OptionEditedImplCopyWith<$Res> {
  factory _$$OptionEditedImplCopyWith(
          _$OptionEditedImpl value, $Res Function(_$OptionEditedImpl) then) =
      __$$OptionEditedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OptionEditedImplCopyWithImpl<$Res>
    extends _$AdditionalOptionStateCopyWithImpl<$Res, _$OptionEditedImpl>
    implements _$$OptionEditedImplCopyWith<$Res> {
  __$$OptionEditedImplCopyWithImpl(
      _$OptionEditedImpl _value, $Res Function(_$OptionEditedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OptionEditedImpl implements _OptionEdited {
  const _$OptionEditedImpl();

  @override
  String toString() {
    return 'AdditionalOptionState.optionEdited()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OptionEditedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AdditionalOptionTileModel> listOfItems)
        loaded,
    required TResult Function(String error) error,
    required TResult Function() optionAdded,
    required TResult Function() optionDeleted,
    required TResult Function() optionEdited,
  }) {
    return optionEdited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? optionAdded,
    TResult? Function()? optionDeleted,
    TResult? Function()? optionEdited,
  }) {
    return optionEdited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AdditionalOptionTileModel> listOfItems)? loaded,
    TResult Function(String error)? error,
    TResult Function()? optionAdded,
    TResult Function()? optionDeleted,
    TResult Function()? optionEdited,
    required TResult orElse(),
  }) {
    if (optionEdited != null) {
      return optionEdited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_OptionAdded value) optionAdded,
    required TResult Function(_OptionDeleted value) optionDeleted,
    required TResult Function(_OptionEdited value) optionEdited,
  }) {
    return optionEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_OptionAdded value)? optionAdded,
    TResult? Function(_OptionDeleted value)? optionDeleted,
    TResult? Function(_OptionEdited value)? optionEdited,
  }) {
    return optionEdited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_OptionAdded value)? optionAdded,
    TResult Function(_OptionDeleted value)? optionDeleted,
    TResult Function(_OptionEdited value)? optionEdited,
    required TResult orElse(),
  }) {
    if (optionEdited != null) {
      return optionEdited(this);
    }
    return orElse();
  }
}

abstract class _OptionEdited implements AdditionalOptionState {
  const factory _OptionEdited() = _$OptionEditedImpl;
}
