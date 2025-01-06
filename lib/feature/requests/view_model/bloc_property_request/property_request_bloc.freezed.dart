// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PropertyRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProperty,
    required TResult Function(String id) approveProperty,
    required TResult Function(String id) rejectProperty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProperty,
    TResult? Function(String id)? approveProperty,
    TResult? Function(String id)? rejectProperty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProperty,
    TResult Function(String id)? approveProperty,
    TResult Function(String id)? rejectProperty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProperty value) fetchProperty,
    required TResult Function(_ApproveProperty value) approveProperty,
    required TResult Function(_RejectProperty value) rejectProperty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProperty value)? fetchProperty,
    TResult? Function(_ApproveProperty value)? approveProperty,
    TResult? Function(_RejectProperty value)? rejectProperty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProperty value)? fetchProperty,
    TResult Function(_ApproveProperty value)? approveProperty,
    TResult Function(_RejectProperty value)? rejectProperty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyRequestEventCopyWith<$Res> {
  factory $PropertyRequestEventCopyWith(PropertyRequestEvent value,
          $Res Function(PropertyRequestEvent) then) =
      _$PropertyRequestEventCopyWithImpl<$Res, PropertyRequestEvent>;
}

/// @nodoc
class _$PropertyRequestEventCopyWithImpl<$Res,
        $Val extends PropertyRequestEvent>
    implements $PropertyRequestEventCopyWith<$Res> {
  _$PropertyRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchPropertyImplCopyWith<$Res> {
  factory _$$FetchPropertyImplCopyWith(
          _$FetchPropertyImpl value, $Res Function(_$FetchPropertyImpl) then) =
      __$$FetchPropertyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPropertyImplCopyWithImpl<$Res>
    extends _$PropertyRequestEventCopyWithImpl<$Res, _$FetchPropertyImpl>
    implements _$$FetchPropertyImplCopyWith<$Res> {
  __$$FetchPropertyImplCopyWithImpl(
      _$FetchPropertyImpl _value, $Res Function(_$FetchPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchPropertyImpl implements _FetchProperty {
  const _$FetchPropertyImpl();

  @override
  String toString() {
    return 'PropertyRequestEvent.fetchProperty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPropertyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProperty,
    required TResult Function(String id) approveProperty,
    required TResult Function(String id) rejectProperty,
  }) {
    return fetchProperty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProperty,
    TResult? Function(String id)? approveProperty,
    TResult? Function(String id)? rejectProperty,
  }) {
    return fetchProperty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProperty,
    TResult Function(String id)? approveProperty,
    TResult Function(String id)? rejectProperty,
    required TResult orElse(),
  }) {
    if (fetchProperty != null) {
      return fetchProperty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProperty value) fetchProperty,
    required TResult Function(_ApproveProperty value) approveProperty,
    required TResult Function(_RejectProperty value) rejectProperty,
  }) {
    return fetchProperty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProperty value)? fetchProperty,
    TResult? Function(_ApproveProperty value)? approveProperty,
    TResult? Function(_RejectProperty value)? rejectProperty,
  }) {
    return fetchProperty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProperty value)? fetchProperty,
    TResult Function(_ApproveProperty value)? approveProperty,
    TResult Function(_RejectProperty value)? rejectProperty,
    required TResult orElse(),
  }) {
    if (fetchProperty != null) {
      return fetchProperty(this);
    }
    return orElse();
  }
}

abstract class _FetchProperty implements PropertyRequestEvent {
  const factory _FetchProperty() = _$FetchPropertyImpl;
}

/// @nodoc
abstract class _$$ApprovePropertyImplCopyWith<$Res> {
  factory _$$ApprovePropertyImplCopyWith(_$ApprovePropertyImpl value,
          $Res Function(_$ApprovePropertyImpl) then) =
      __$$ApprovePropertyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ApprovePropertyImplCopyWithImpl<$Res>
    extends _$PropertyRequestEventCopyWithImpl<$Res, _$ApprovePropertyImpl>
    implements _$$ApprovePropertyImplCopyWith<$Res> {
  __$$ApprovePropertyImplCopyWithImpl(
      _$ApprovePropertyImpl _value, $Res Function(_$ApprovePropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ApprovePropertyImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApprovePropertyImpl implements _ApproveProperty {
  const _$ApprovePropertyImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PropertyRequestEvent.approveProperty(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovePropertyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovePropertyImplCopyWith<_$ApprovePropertyImpl> get copyWith =>
      __$$ApprovePropertyImplCopyWithImpl<_$ApprovePropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProperty,
    required TResult Function(String id) approveProperty,
    required TResult Function(String id) rejectProperty,
  }) {
    return approveProperty(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProperty,
    TResult? Function(String id)? approveProperty,
    TResult? Function(String id)? rejectProperty,
  }) {
    return approveProperty?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProperty,
    TResult Function(String id)? approveProperty,
    TResult Function(String id)? rejectProperty,
    required TResult orElse(),
  }) {
    if (approveProperty != null) {
      return approveProperty(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProperty value) fetchProperty,
    required TResult Function(_ApproveProperty value) approveProperty,
    required TResult Function(_RejectProperty value) rejectProperty,
  }) {
    return approveProperty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProperty value)? fetchProperty,
    TResult? Function(_ApproveProperty value)? approveProperty,
    TResult? Function(_RejectProperty value)? rejectProperty,
  }) {
    return approveProperty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProperty value)? fetchProperty,
    TResult Function(_ApproveProperty value)? approveProperty,
    TResult Function(_RejectProperty value)? rejectProperty,
    required TResult orElse(),
  }) {
    if (approveProperty != null) {
      return approveProperty(this);
    }
    return orElse();
  }
}

abstract class _ApproveProperty implements PropertyRequestEvent {
  const factory _ApproveProperty(final String id) = _$ApprovePropertyImpl;

  String get id;

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovePropertyImplCopyWith<_$ApprovePropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectPropertyImplCopyWith<$Res> {
  factory _$$RejectPropertyImplCopyWith(_$RejectPropertyImpl value,
          $Res Function(_$RejectPropertyImpl) then) =
      __$$RejectPropertyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RejectPropertyImplCopyWithImpl<$Res>
    extends _$PropertyRequestEventCopyWithImpl<$Res, _$RejectPropertyImpl>
    implements _$$RejectPropertyImplCopyWith<$Res> {
  __$$RejectPropertyImplCopyWithImpl(
      _$RejectPropertyImpl _value, $Res Function(_$RejectPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RejectPropertyImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RejectPropertyImpl implements _RejectProperty {
  const _$RejectPropertyImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PropertyRequestEvent.rejectProperty(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectPropertyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectPropertyImplCopyWith<_$RejectPropertyImpl> get copyWith =>
      __$$RejectPropertyImplCopyWithImpl<_$RejectPropertyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProperty,
    required TResult Function(String id) approveProperty,
    required TResult Function(String id) rejectProperty,
  }) {
    return rejectProperty(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProperty,
    TResult? Function(String id)? approveProperty,
    TResult? Function(String id)? rejectProperty,
  }) {
    return rejectProperty?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProperty,
    TResult Function(String id)? approveProperty,
    TResult Function(String id)? rejectProperty,
    required TResult orElse(),
  }) {
    if (rejectProperty != null) {
      return rejectProperty(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProperty value) fetchProperty,
    required TResult Function(_ApproveProperty value) approveProperty,
    required TResult Function(_RejectProperty value) rejectProperty,
  }) {
    return rejectProperty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProperty value)? fetchProperty,
    TResult? Function(_ApproveProperty value)? approveProperty,
    TResult? Function(_RejectProperty value)? rejectProperty,
  }) {
    return rejectProperty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProperty value)? fetchProperty,
    TResult Function(_ApproveProperty value)? approveProperty,
    TResult Function(_RejectProperty value)? rejectProperty,
    required TResult orElse(),
  }) {
    if (rejectProperty != null) {
      return rejectProperty(this);
    }
    return orElse();
  }
}

abstract class _RejectProperty implements PropertyRequestEvent {
  const factory _RejectProperty(final String id) = _$RejectPropertyImpl;

  String get id;

  /// Create a copy of PropertyRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectPropertyImplCopyWith<_$RejectPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropertyRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestPropertyModel> propertyList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestPropertyModel> propertyList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestPropertyModel> propertyList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyRequestStateCopyWith<$Res> {
  factory $PropertyRequestStateCopyWith(PropertyRequestState value,
          $Res Function(PropertyRequestState) then) =
      _$PropertyRequestStateCopyWithImpl<$Res, PropertyRequestState>;
}

/// @nodoc
class _$PropertyRequestStateCopyWithImpl<$Res,
        $Val extends PropertyRequestState>
    implements $PropertyRequestStateCopyWith<$Res> {
  _$PropertyRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyRequestState
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
    extends _$PropertyRequestStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PropertyRequestState.initial()';
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
    required TResult Function(List<RequestPropertyModel> propertyList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestPropertyModel> propertyList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestPropertyModel> propertyList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PropertyRequestState {
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
    extends _$PropertyRequestStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PropertyRequestState.loading()';
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
    required TResult Function(List<RequestPropertyModel> propertyList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestPropertyModel> propertyList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestPropertyModel> propertyList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PropertyRequestState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RequestPropertyModel> propertyList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PropertyRequestStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyList = null,
  }) {
    return _then(_$SuccessImpl(
      null == propertyList
          ? _value._propertyList
          : propertyList // ignore: cast_nullable_to_non_nullable
              as List<RequestPropertyModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<RequestPropertyModel> propertyList)
      : _propertyList = propertyList;

  final List<RequestPropertyModel> _propertyList;
  @override
  List<RequestPropertyModel> get propertyList {
    if (_propertyList is EqualUnmodifiableListView) return _propertyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyList);
  }

  @override
  String toString() {
    return 'PropertyRequestState.success(propertyList: $propertyList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._propertyList, _propertyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_propertyList));

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestPropertyModel> propertyList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return success(propertyList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestPropertyModel> propertyList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return success?.call(propertyList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestPropertyModel> propertyList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(propertyList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PropertyRequestState {
  const factory _Success(final List<RequestPropertyModel> propertyList) =
      _$SuccessImpl;

  List<RequestPropertyModel> get propertyList;

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
    extends _$PropertyRequestStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestState
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
    return 'PropertyRequestState.error(error: $error)';
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

  /// Create a copy of PropertyRequestState
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
    required TResult Function(List<RequestPropertyModel> propertyList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestPropertyModel> propertyList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestPropertyModel> propertyList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PropertyRequestState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestedAcceptedImplCopyWith<$Res> {
  factory _$$RequestedAcceptedImplCopyWith(_$RequestedAcceptedImpl value,
          $Res Function(_$RequestedAcceptedImpl) then) =
      __$$RequestedAcceptedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedAcceptedImplCopyWithImpl<$Res>
    extends _$PropertyRequestStateCopyWithImpl<$Res, _$RequestedAcceptedImpl>
    implements _$$RequestedAcceptedImplCopyWith<$Res> {
  __$$RequestedAcceptedImplCopyWithImpl(_$RequestedAcceptedImpl _value,
      $Res Function(_$RequestedAcceptedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestedAcceptedImpl implements _RequestedAccepted {
  const _$RequestedAcceptedImpl();

  @override
  String toString() {
    return 'PropertyRequestState.requestedAccepted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedAcceptedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestPropertyModel> propertyList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return requestedAccepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestPropertyModel> propertyList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return requestedAccepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestPropertyModel> propertyList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedAccepted != null) {
      return requestedAccepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return requestedAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return requestedAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedAccepted != null) {
      return requestedAccepted(this);
    }
    return orElse();
  }
}

abstract class _RequestedAccepted implements PropertyRequestState {
  const factory _RequestedAccepted() = _$RequestedAcceptedImpl;
}

/// @nodoc
abstract class _$$RequestedRejectedImplCopyWith<$Res> {
  factory _$$RequestedRejectedImplCopyWith(_$RequestedRejectedImpl value,
          $Res Function(_$RequestedRejectedImpl) then) =
      __$$RequestedRejectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedRejectedImplCopyWithImpl<$Res>
    extends _$PropertyRequestStateCopyWithImpl<$Res, _$RequestedRejectedImpl>
    implements _$$RequestedRejectedImplCopyWith<$Res> {
  __$$RequestedRejectedImplCopyWithImpl(_$RequestedRejectedImpl _value,
      $Res Function(_$RequestedRejectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestedRejectedImpl implements _RequestedRejected {
  const _$RequestedRejectedImpl();

  @override
  String toString() {
    return 'PropertyRequestState.requestedRejected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedRejectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestPropertyModel> propertyList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return requestedRejected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestPropertyModel> propertyList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return requestedRejected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestPropertyModel> propertyList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedRejected != null) {
      return requestedRejected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return requestedRejected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return requestedRejected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedRejected != null) {
      return requestedRejected(this);
    }
    return orElse();
  }
}

abstract class _RequestedRejected implements PropertyRequestState {
  const factory _RequestedRejected() = _$RequestedRejectedImpl;
}
